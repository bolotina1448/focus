.class Lru/fokus/tetrad/MainActivity$18$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/fokus/tetrad/MainActivity$18;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lru/fokus/tetrad/MainActivity$18;

.field final synthetic val$fe:Ljava/lang/Exception;

.field final synthetic val$fl:Ljava/util/List;


# direct methods
.method constructor <init>(Lru/fokus/tetrad/MainActivity$18;Ljava/lang/Exception;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 324
    iput-object p1, p0, Lru/fokus/tetrad/MainActivity$18$1;->this$1:Lru/fokus/tetrad/MainActivity$18;

    iput-object p2, p0, Lru/fokus/tetrad/MainActivity$18$1;->val$fe:Ljava/lang/Exception;

    iput-object p3, p0, Lru/fokus/tetrad/MainActivity$18$1;->val$fl:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 325
    iget-object v0, p0, Lru/fokus/tetrad/MainActivity$18$1;->this$1:Lru/fokus/tetrad/MainActivity$18;

    iget-object v0, v0, Lru/fokus/tetrad/MainActivity$18;->this$0:Lru/fokus/tetrad/MainActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lru/fokus/tetrad/MainActivity;->access$1202(Lru/fokus/tetrad/MainActivity;Z)Z

    .line 326
    iget-object v0, p0, Lru/fokus/tetrad/MainActivity$18$1;->this$1:Lru/fokus/tetrad/MainActivity$18;

    iget-object v0, v0, Lru/fokus/tetrad/MainActivity$18;->this$0:Lru/fokus/tetrad/MainActivity;

    invoke-static {v0}, Lru/fokus/tetrad/MainActivity;->access$500(Lru/fokus/tetrad/MainActivity;)V

    .line 327
    iget-object v0, p0, Lru/fokus/tetrad/MainActivity$18$1;->val$fe:Ljava/lang/Exception;

    instance-of v0, v0, Lru/fokus/tetrad/Mesh$MeshException;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/fokus/tetrad/MainActivity$18$1;->val$fe:Ljava/lang/Exception;

    check-cast v0, Lru/fokus/tetrad/Mesh$MeshException;

    iget-boolean v0, v0, Lru/fokus/tetrad/Mesh$MeshException;->needLogin:Z

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lru/fokus/tetrad/MainActivity$18$1;->this$1:Lru/fokus/tetrad/MainActivity$18;

    iget-object v0, v0, Lru/fokus/tetrad/MainActivity$18;->this$0:Lru/fokus/tetrad/MainActivity;

    iget-object v1, p0, Lru/fokus/tetrad/MainActivity$18$1;->val$fe:Ljava/lang/Exception;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 329
    iget-object v0, p0, Lru/fokus/tetrad/MainActivity$18$1;->this$1:Lru/fokus/tetrad/MainActivity$18;

    iget-object v0, v0, Lru/fokus/tetrad/MainActivity$18;->this$0:Lru/fokus/tetrad/MainActivity;

    invoke-static {v0}, Lru/fokus/tetrad/MainActivity;->access$200(Lru/fokus/tetrad/MainActivity;)V

    .line 343
    :goto_0
    return-void

    .line 330
    :cond_0
    iget-object v0, p0, Lru/fokus/tetrad/MainActivity$18$1;->val$fe:Ljava/lang/Exception;

    if-eqz v0, :cond_1

    .line 331
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lru/fokus/tetrad/MainActivity$18$1;->this$1:Lru/fokus/tetrad/MainActivity$18;

    iget-object v1, v1, Lru/fokus/tetrad/MainActivity$18;->this$0:Lru/fokus/tetrad/MainActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u041d\u0435 \u043f\u043e\u043b\u0443\u0447\u0438\u043b\u043e\u0441\u044c \u0437\u0430\u0433\u0440\u0443\u0437\u0438\u0442\u044c \u0437\u0430\u0434\u0430\u043d\u0438\u044f"

    .line 332
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u041c\u042d\u0428 \u043d\u0435 \u043e\u0442\u0434\u0430\u043b \u0437\u0430\u0434\u0430\u043d\u0438\u044f \u043d\u0430\u043f\u0440\u044f\u043c\u0443\u044e. \u041c\u043e\u0436\u043d\u043e \u043e\u0442\u043a\u0440\u044b\u0442\u044c \u0434\u043d\u0435\u0432\u043d\u0438\u043a, \u043d\u0430\u0439\u0442\u0438 \u0434\u043e\u043c\u0430\u0448\u043a\u0443 \u0438 \u0432\u0437\u044f\u0442\u044c \u0435\u0451 \u043f\u0440\u044f\u043c\u043e \u0441\u043e \u0441\u0442\u0440\u0430\u043d\u0438\u0446\u044b."

    .line 333
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u041e\u0442\u043a\u0440\u044b\u0442\u044c \u0434\u043d\u0435\u0432\u043d\u0438\u043a"

    new-instance v2, Lru/fokus/tetrad/MainActivity$18$1$1;

    invoke-direct {v2, p0}, Lru/fokus/tetrad/MainActivity$18$1$1;-><init>(Lru/fokus/tetrad/MainActivity$18$1;)V

    .line 334
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u041e\u0442\u043c\u0435\u043d\u0430"

    .line 335
    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 336
    :cond_1
    iget-object v0, p0, Lru/fokus/tetrad/MainActivity$18$1;->val$fl:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lru/fokus/tetrad/MainActivity$18$1;->val$fl:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 337
    :cond_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lru/fokus/tetrad/MainActivity$18$1;->this$1:Lru/fokus/tetrad/MainActivity$18;

    iget-object v1, v1, Lru/fokus/tetrad/MainActivity$18;->this$0:Lru/fokus/tetrad/MainActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u0417\u0430\u0434\u0430\u043d\u0438\u0439 \u043d\u0435 \u043d\u0430\u0439\u0434\u0435\u043d\u043e"

    .line 338
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u041d\u0430 \u0431\u043b\u0438\u0436\u0430\u0439\u0448\u0443\u044e \u043d\u0435\u0434\u0435\u043b\u044e \u0434\u043e\u043c\u0430\u0448\u043d\u0438\u0445 \u0437\u0430\u0434\u0430\u043d\u0438\u0439 \u0432 \u041c\u042d\u0428 \u043d\u0435\u0442. \u0415\u0441\u043b\u0438 \u043e\u043d\u0438 \u0435\u0441\u0442\u044c \u0432 \u0434\u043d\u0435\u0432\u043d\u0438\u043a\u0435 \u2014 \u043e\u0442\u043a\u0440\u043e\u0439 \u0435\u0433\u043e \u0438 \u0432\u043e\u0437\u044c\u043c\u0438 \u0437\u0430\u0434\u0430\u043d\u0438\u0435 \u0441\u043e \u0441\u0442\u0440\u0430\u043d\u0438\u0446\u044b."

    .line 339
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u041e\u0442\u043a\u0440\u044b\u0442\u044c \u0434\u043d\u0435\u0432\u043d\u0438\u043a"

    new-instance v2, Lru/fokus/tetrad/MainActivity$18$1$2;

    invoke-direct {v2, p0}, Lru/fokus/tetrad/MainActivity$18$1$2;-><init>(Lru/fokus/tetrad/MainActivity$18$1;)V

    .line 340
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u041f\u043e\u043d\u044f\u0442\u043d\u043e"

    .line 341
    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 342
    :cond_3
    iget-object v0, p0, Lru/fokus/tetrad/MainActivity$18$1;->this$1:Lru/fokus/tetrad/MainActivity$18;

    iget-object v0, v0, Lru/fokus/tetrad/MainActivity$18;->this$0:Lru/fokus/tetrad/MainActivity;

    iget-object v1, p0, Lru/fokus/tetrad/MainActivity$18$1;->val$fl:Ljava/util/List;

    invoke-static {v0, v1}, Lru/fokus/tetrad/MainActivity;->access$1400(Lru/fokus/tetrad/MainActivity;Ljava/util/List;)V

    goto :goto_0
.end method
