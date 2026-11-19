.class Lru/fokus/tetrad/Pin$2;
.super Ljava/lang/Object;
.source "Pin.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/fokus/tetrad/Pin;->set(Landroid/app/Activity;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$a:Landroid/app/Activity;

.field final synthetic val$after:Ljava/lang/Runnable;

.field final synthetic val$e:Landroid/widget/EditText;

.field final synthetic val$s:Lru/fokus/tetrad/Store;


# direct methods
.method constructor <init>(Landroid/widget/EditText;Lru/fokus/tetrad/Store;Landroid/app/Activity;Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 44
    iput-object p1, p0, Lru/fokus/tetrad/Pin$2;->val$e:Landroid/widget/EditText;

    iput-object p2, p0, Lru/fokus/tetrad/Pin$2;->val$s:Lru/fokus/tetrad/Store;

    iput-object p3, p0, Lru/fokus/tetrad/Pin$2;->val$a:Landroid/app/Activity;

    iput-object p4, p0, Lru/fokus/tetrad/Pin$2;->val$after:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 45
    iget-object v0, p0, Lru/fokus/tetrad/Pin$2;->val$e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 46
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lru/fokus/tetrad/Pin$2;->val$s:Lru/fokus/tetrad/Store;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lru/fokus/tetrad/Store;->setPin(Ljava/lang/String;)V

    iget-object v0, p0, Lru/fokus/tetrad/Pin$2;->val$a:Landroid/app/Activity;

    const-string v1, "PIN \u0432\u044b\u043a\u043b\u044e\u0447\u0435\u043d"

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 49
    :goto_0
    iget-object v0, p0, Lru/fokus/tetrad/Pin$2;->val$after:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/fokus/tetrad/Pin$2;->val$after:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 50
    :cond_0
    :goto_1
    return-void

    .line 47
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x8

    if-le v1, v2, :cond_3

    :cond_2
    iget-object v0, p0, Lru/fokus/tetrad/Pin$2;->val$a:Landroid/app/Activity;

    const-string v1, "PIN \u2014 \u043e\u0442 4 \u0434\u043e 8 \u0446\u0438\u0444\u0440"

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 48
    :cond_3
    iget-object v1, p0, Lru/fokus/tetrad/Pin$2;->val$s:Lru/fokus/tetrad/Store;

    invoke-virtual {v1, v0}, Lru/fokus/tetrad/Store;->setPin(Ljava/lang/String;)V

    iget-object v0, p0, Lru/fokus/tetrad/Pin$2;->val$a:Landroid/app/Activity;

    const-string v1, "PIN \u0441\u043e\u0445\u0440\u0430\u043d\u0451\u043d"

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
