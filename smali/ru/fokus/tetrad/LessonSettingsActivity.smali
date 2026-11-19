.class public Lru/fokus/tetrad/LessonSettingsActivity;
.super Landroid/app/Activity;
.source "LessonSettingsActivity.java"


# instance fields
.field private content:Landroid/widget/LinearLayout;

.field private store:Lru/fokus/tetrad/Store;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lru/fokus/tetrad/LessonSettingsActivity;)Lru/fokus/tetrad/Store;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lru/fokus/tetrad/LessonSettingsActivity;->store:Lru/fokus/tetrad/Store;

    return-object v0
.end method

.method static synthetic access$100(Lru/fokus/tetrad/LessonSettingsActivity;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lru/fokus/tetrad/LessonSettingsActivity;->render()V

    return-void
.end method

.method static join(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_0

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 125
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private render()V
    .locals 11

    .prologue
    .line 39
    iget-object v0, p0, Lru/fokus/tetrad/LessonSettingsActivity;->content:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 40
    iget-object v0, p0, Lru/fokus/tetrad/LessonSettingsActivity;->content:Landroid/widget/LinearLayout;

    const-string v1, "\u041d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0438 \u0437\u0430\u043d\u044f\u0442\u0438\u044f"

    invoke-static {p0, v1}, Lru/fokus/tetrad/Ui;->header(Landroid/app/Activity;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 43
    invoke-static {p0}, Lru/fokus/tetrad/Ui;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 44
    const-string v0, "\u0414\u043b\u0438\u0442\u0435\u043b\u044c\u043d\u043e\u0441\u0442\u044c"

    invoke-static {p0, v0}, Lru/fokus/tetrad/Ui;->title(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 45
    new-instance v4, Landroid/widget/HorizontalScrollView;

    invoke-direct {v4, p0}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 46
    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Landroid/widget/HorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 47
    const/16 v0, 0x8

    invoke-static {p0, v0}, Lru/fokus/tetrad/Ui;->row(Landroid/content/Context;I)Landroid/widget/LinearLayout;

    move-result-object v5

    .line 48
    const/4 v0, 0x6

    new-array v6, v0, [I

    fill-array-data v6, :array_0

    .line 49
    iget-object v0, p0, Lru/fokus/tetrad/LessonSettingsActivity;->store:Lru/fokus/tetrad/Store;

    invoke-virtual {v0}, Lru/fokus/tetrad/Store;->minutes()I

    move-result v7

    .line 50
    const/4 v0, 0x0

    .line 51
    array-length v8, v6

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v8, :cond_2

    aget v9, v6, v2

    .line 52
    if-ne v9, v7, :cond_0

    const/4 v0, 0x1

    .line 53
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v10, " \u043c\u0438\u043d"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    if-ne v9, v7, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-static {p0, v10, v1}, Lru/fokus/tetrad/Ui;->chip(Landroid/content/Context;Ljava/lang/String;Z)Landroid/widget/TextView;

    move-result-object v1

    .line 54
    new-instance v10, Lru/fokus/tetrad/LessonSettingsActivity$1;

    invoke-direct {v10, p0, v9}, Lru/fokus/tetrad/LessonSettingsActivity$1;-><init>(Lru/fokus/tetrad/LessonSettingsActivity;I)V

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 51
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 53
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 57
    :cond_2
    invoke-virtual {v4, v5}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;)V

    .line 58
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 59
    const/16 v1, 0xa

    invoke-static {p0, v1}, Lru/fokus/tetrad/Ui;->row(Landroid/content/Context;I)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 60
    const-string v2, "\u0421\u0432\u043e\u0451 \u0432\u0440\u0435\u043c\u044f, \u043c\u0438\u043d:"

    const/high16 v4, 0x41700000    # 15.0f

    sget v6, Lru/fokus/tetrad/Ui;->MUTED:I

    sget-object v8, Lru/fokus/tetrad/Ui;->BODY:Landroid/graphics/Typeface;

    invoke-static {p0, v2, v4, v6, v8}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 61
    const-string v2, "\u043d\u0430\u043f\u0440. 40"

    const/4 v4, 0x0

    invoke-static {p0, v2, v4}, Lru/fokus/tetrad/Ui;->edit(Landroid/content/Context;Ljava/lang/String;Z)Landroid/widget/EditText;

    move-result-object v2

    .line 62
    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setInputType(I)V

    .line 63
    const/16 v4, 0x11

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setGravity(I)V

    .line 64
    if-nez v0, :cond_3

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 65
    :cond_3
    new-instance v0, Lru/fokus/tetrad/LessonSettingsActivity$2;

    invoke-direct {v0, p0, v5}, Lru/fokus/tetrad/LessonSettingsActivity$2;-><init>(Lru/fokus/tetrad/LessonSettingsActivity;Landroid/widget/LinearLayout;)V

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 78
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x42c80000    # 100.0f

    invoke-static {v4}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v4

    const/4 v5, -0x2

    invoke-direct {v0, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 80
    iget-object v0, p0, Lru/fokus/tetrad/LessonSettingsActivity;->content:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 83
    invoke-static {p0}, Lru/fokus/tetrad/Ui;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 84
    const-string v0, "\u0427\u0442\u043e \u0431\u043b\u043e\u043a\u0438\u0440\u043e\u0432\u0430\u0442\u044c"

    invoke-static {p0, v0}, Lru/fokus/tetrad/Ui;->title(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 85
    iget-object v0, p0, Lru/fokus/tetrad/LessonSettingsActivity;->store:Lru/fokus/tetrad/Store;

    invoke-virtual {v0}, Lru/fokus/tetrad/Store;->blocked()Ljava/util/Set;

    move-result-object v0

    invoke-static {p0, v0}, Lru/fokus/tetrad/FocusActivity;->appNames(Landroid/content/Context;Ljava/util/Set;)Ljava/util/List;

    move-result-object v1

    .line 87
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "\u041d\u0438\u0447\u0435\u0433\u043e \u043d\u0435 \u0432\u044b\u0431\u0440\u0430\u043d\u043e"

    .line 90
    :goto_2
    const/high16 v3, 0x41700000    # 15.0f

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    sget v1, Lru/fokus/tetrad/Ui;->MUTED:I

    :goto_3
    sget-object v4, Lru/fokus/tetrad/Ui;->BODY:Landroid/graphics/Typeface;

    invoke-static {p0, v0, v3, v1, v4}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 91
    const-string v0, "\u0412\u044b\u0431\u0440\u0430\u0442\u044c \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u044f"

    const/4 v1, 0x1

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v3}, Lru/fokus/tetrad/Ui;->button(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v0

    .line 92
    new-instance v1, Lru/fokus/tetrad/LessonSettingsActivity$3;

    invoke-direct {v1, p0}, Lru/fokus/tetrad/LessonSettingsActivity$3;-><init>(Lru/fokus/tetrad/LessonSettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    invoke-static {}, Lru/fokus/tetrad/Ui;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 96
    const-string v0, "\u0411\u043b\u043e\u043a\u0438\u0440\u043e\u0432\u0430\u0442\u044c \u043d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0438 \u0442\u0435\u043b\u0435\u0444\u043e\u043d\u0430"

    const-string v1, "\u0422\u043e\u0433\u0434\u0430 \u0432\u043e \u0432\u0440\u0435\u043c\u044f \u0437\u0430\u043d\u044f\u0442\u0438\u044f \u043d\u0435 \u043f\u043e\u043b\u0443\u0447\u0438\u0442\u0441\u044f \u0432\u044b\u043a\u043b\u044e\u0447\u0438\u0442\u044c \u0431\u043b\u043e\u043a\u0438\u0440\u043e\u0432\u043a\u0443. \u0417\u0432\u043e\u043d\u043a\u0438 \u0438 \u043a\u0430\u043c\u0435\u0440\u0430 \u0440\u0430\u0431\u043e\u0442\u0430\u044e\u0442."

    iget-object v3, p0, Lru/fokus/tetrad/LessonSettingsActivity;->store:Lru/fokus/tetrad/Store;

    .line 98
    invoke-virtual {v3}, Lru/fokus/tetrad/Store;->blockSettings()Z

    move-result v3

    new-instance v4, Lru/fokus/tetrad/LessonSettingsActivity$4;

    invoke-direct {v4, p0}, Lru/fokus/tetrad/LessonSettingsActivity$4;-><init>(Lru/fokus/tetrad/LessonSettingsActivity;)V

    .line 96
    invoke-virtual {p0, v0, v1, v3, v4}, Lru/fokus/tetrad/LessonSettingsActivity;->switchRow(Ljava/lang/String;Ljava/lang/String;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 101
    iget-object v0, p0, Lru/fokus/tetrad/LessonSettingsActivity;->content:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 103
    const-string v0, "\u0411\u043b\u043e\u043a\u0438\u0440\u043e\u0432\u043a\u0430 \u0434\u0435\u0439\u0441\u0442\u0432\u0443\u0435\u0442, \u043f\u043e\u043a\u0430 \u0438\u0434\u0451\u0442 \u0442\u0430\u0439\u043c\u0435\u0440 \u0437\u0430\u043d\u044f\u0442\u0438\u044f. \u041a\u043e\u0433\u0434\u0430 \u0432\u0440\u0435\u043c\u044f \u0432\u044b\u0439\u0434\u0435\u0442, \u0432\u0441\u0435 \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u044f \u0441\u043d\u043e\u0432\u0430 \u043e\u0442\u043a\u0440\u043e\u044e\u0442\u0441\u044f."

    const/high16 v1, 0x41500000    # 13.0f

    sget v2, Lru/fokus/tetrad/Ui;->MUTED:I

    sget-object v3, Lru/fokus/tetrad/Ui;->BODY:Landroid/graphics/Typeface;

    invoke-static {p0, v0, v1, v2, v3}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v0

    .line 104
    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v1}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v1

    const/4 v2, 0x0

    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {v3}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 105
    iget-object v1, p0, Lru/fokus/tetrad/LessonSettingsActivity;->content:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 106
    return-void

    .line 88
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x6

    if-gt v0, v3, :cond_5

    invoke-static {v1}, Lru/fokus/tetrad/LessonSettingsActivity;->join(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 89
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x6

    invoke-interface {v1, v3, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lru/fokus/tetrad/LessonSettingsActivity;->join(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " \u0438 \u0435\u0449\u0451 "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x6

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 90
    :cond_6
    sget v1, Lru/fokus/tetrad/Ui;->FG:I

    goto/16 :goto_3

    .line 48
    nop

    :array_0
    .array-data 4
        0xf
        0x19
        0x1e
        0x2d
        0x3c
        0x5a
    .end array-data
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lru/fokus/tetrad/Ui;->applyTheme(Landroid/app/Activity;Z)V

    .line 27
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    sget v0, Lru/fokus/tetrad/Ui;->BG:I

    sget-boolean v1, Lru/fokus/tetrad/Ui;->night:Z

    invoke-static {p0, v0, v1}, Lru/fokus/tetrad/Ui;->paintBars(Landroid/app/Activity;IZ)V

    .line 29
    new-instance v0, Lru/fokus/tetrad/Store;

    invoke-direct {v0, p0}, Lru/fokus/tetrad/Store;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lru/fokus/tetrad/LessonSettingsActivity;->store:Lru/fokus/tetrad/Store;

    .line 30
    invoke-static {p0}, Lru/fokus/tetrad/Ui;->screen(Landroid/app/Activity;)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lru/fokus/tetrad/LessonSettingsActivity;->content:Landroid/widget/LinearLayout;

    .line 31
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 34
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 35
    invoke-direct {p0}, Lru/fokus/tetrad/LessonSettingsActivity;->render()V

    .line 36
    return-void
.end method

.method switchRow(Ljava/lang/String;Ljava/lang/String;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)Landroid/view/View;
    .locals 5

    .prologue
    .line 109
    const/16 v0, 0xc

    invoke-static {p0, v0}, Lru/fokus/tetrad/Ui;->row(Landroid/content/Context;I)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 110
    const/4 v1, 0x2

    invoke-static {p0, v1}, Lru/fokus/tetrad/Ui;->col(Landroid/content/Context;I)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 111
    const/high16 v2, 0x41800000    # 16.0f

    sget v3, Lru/fokus/tetrad/Ui;->FG:I

    sget-object v4, Lru/fokus/tetrad/Ui;->MEDIUM:Landroid/graphics/Typeface;

    invoke-static {p0, p1, v2, v3, v4}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 112
    const/high16 v2, 0x41500000    # 13.0f

    sget v3, Lru/fokus/tetrad/Ui;->MUTED:I

    sget-object v4, Lru/fokus/tetrad/Ui;->BODY:Landroid/graphics/Typeface;

    invoke-static {p0, p2, v2, v3, v4}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 113
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2}, Lru/fokus/tetrad/Ui;->weight(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 114
    new-instance v1, Landroid/widget/Switch;

    invoke-direct {v1, p0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    .line 115
    invoke-virtual {v1, p3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 116
    invoke-virtual {v1, p4}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 117
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 118
    new-instance v2, Lru/fokus/tetrad/LessonSettingsActivity$5;

    invoke-direct {v2, p0, v1}, Lru/fokus/tetrad/LessonSettingsActivity$5;-><init>(Lru/fokus/tetrad/LessonSettingsActivity;Landroid/widget/Switch;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    return-object v0
.end method
