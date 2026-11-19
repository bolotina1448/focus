.class public final Lru/fokus/tetrad/Pin;
.super Ljava/lang/Object;
.source "Pin.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static field(Landroid/app/Activity;)Landroid/widget/EditText;
    .locals 2

    .prologue
    .line 57
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 58
    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 59
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setGravity(I)V

    .line 60
    const/high16 v1, 0x41c00000    # 24.0f

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextSize(F)V

    .line 61
    const v1, 0x3e99999a    # 0.3f

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setLetterSpacing(F)V

    .line 62
    return-object v0
.end method

.method public static guard(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 5

    .prologue
    .line 19
    new-instance v0, Lru/fokus/tetrad/Store;

    invoke-direct {v0, p0}, Lru/fokus/tetrad/Store;-><init>(Landroid/content/Context;)V

    .line 20
    invoke-virtual {v0}, Lru/fokus/tetrad/Store;->hasPin()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 33
    :goto_0
    return-void

    .line 21
    :cond_0
    invoke-static {p0}, Lru/fokus/tetrad/Pin;->field(Landroid/app/Activity;)Landroid/widget/EditText;

    move-result-object v1

    .line 22
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v3, "PIN \u0440\u043e\u0434\u0438\u0442\u0435\u043b\u044f"

    .line 23
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 24
    invoke-virtual {v2, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 25
    invoke-static {p0, v1}, Lru/fokus/tetrad/Pin;->wrap(Landroid/app/Activity;Landroid/widget/EditText;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "\u0413\u043e\u0442\u043e\u0432\u043e"

    new-instance v4, Lru/fokus/tetrad/Pin$1;

    invoke-direct {v4, v0, v1, p2, p0}, Lru/fokus/tetrad/Pin$1;-><init>(Lru/fokus/tetrad/Store;Landroid/widget/EditText;Ljava/lang/Runnable;Landroid/app/Activity;)V

    .line 26
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u041e\u0442\u043c\u0435\u043d\u0430"

    const/4 v2, 0x0

    .line 30
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 31
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 32
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    goto :goto_0
.end method

.method public static set(Landroid/app/Activity;Ljava/lang/Runnable;)V
    .locals 5

    .prologue
    .line 37
    new-instance v1, Lru/fokus/tetrad/Store;

    invoke-direct {v1, p0}, Lru/fokus/tetrad/Store;-><init>(Landroid/content/Context;)V

    .line 38
    invoke-static {p0}, Lru/fokus/tetrad/Pin;->field(Landroid/app/Activity;)Landroid/widget/EditText;

    move-result-object v2

    .line 39
    const-string v0, "4\u20138 \u0446\u0438\u0444\u0440"

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 40
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 41
    invoke-virtual {v1}, Lru/fokus/tetrad/Store;->hasPin()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u041d\u043e\u0432\u044b\u0439 PIN \u0440\u043e\u0434\u0438\u0442\u0435\u043b\u044f"

    :goto_0
    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v3, "\u0411\u0435\u0437 \u043d\u0435\u0433\u043e \u043d\u0435\u043b\u044c\u0437\u044f \u0431\u0443\u0434\u0435\u0442 \u043c\u0435\u043d\u044f\u0442\u044c \u043d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0438 \u0438 \u0437\u0430\u043a\u0430\u043d\u0447\u0438\u0432\u0430\u0442\u044c \u0437\u0430\u043d\u044f\u0442\u0438\u0435 \u0440\u0430\u043d\u044c\u0448\u0435 \u0432\u0440\u0435\u043c\u0435\u043d\u0438. \u041e\u0441\u0442\u0430\u0432\u044c \u043f\u043e\u043b\u0435 \u043f\u0443\u0441\u0442\u044b\u043c, \u0447\u0442\u043e\u0431\u044b \u0432\u044b\u043a\u043b\u044e\u0447\u0438\u0442\u044c PIN."

    .line 42
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 43
    invoke-static {p0, v2}, Lru/fokus/tetrad/Pin;->wrap(Landroid/app/Activity;Landroid/widget/EditText;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v3, "\u0421\u043e\u0445\u0440\u0430\u043d\u0438\u0442\u044c"

    new-instance v4, Lru/fokus/tetrad/Pin$2;

    invoke-direct {v4, v2, v1, p0, p1}, Lru/fokus/tetrad/Pin$2;-><init>(Landroid/widget/EditText;Lru/fokus/tetrad/Store;Landroid/app/Activity;Ljava/lang/Runnable;)V

    .line 44
    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u041e\u0442\u043c\u0435\u043d\u0430"

    const/4 v2, 0x0

    .line 51
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 52
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 53
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 54
    return-void

    .line 41
    :cond_0
    const-string v0, "\u041f\u0440\u0438\u0434\u0443\u043c\u0430\u0439 PIN \u0440\u043e\u0434\u0438\u0442\u0435\u043b\u044f"

    goto :goto_0
.end method

.method private static wrap(Landroid/app/Activity;Landroid/widget/EditText;)Landroid/widget/LinearLayout;
    .locals 5

    .prologue
    const/high16 v3, 0x41c00000    # 24.0f

    .line 66
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 67
    invoke-static {v3}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v1

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v2}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v2

    invoke-static {v3}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 68
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 69
    return-object v0
.end method
