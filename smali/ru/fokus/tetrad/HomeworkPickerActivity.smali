.class public Lru/fokus/tetrad/HomeworkPickerActivity;
.super Landroid/app/Activity;
.source "HomeworkPickerActivity.java"


# static fields
.field static input:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lru/fokus/tetrad/Mesh$Hw;",
            ">;"
        }
    .end annotation
.end field

.field static result:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lru/fokus/tetrad/Mesh$Hw;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private all:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lru/fokus/tetrad/Mesh$Hw;",
            ">;"
        }
    .end annotation
.end field

.field private day:Ljava/lang/String;

.field private dayRow:Landroid/widget/LinearLayout;

.field private final days:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private list:Landroid/widget/LinearLayout;

.field private scroll:Landroid/widget/ScrollView;

.field private final selected:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lru/fokus/tetrad/Mesh$Hw;",
            ">;"
        }
    .end annotation
.end field

.field private take:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lru/fokus/tetrad/HomeworkPickerActivity;->all:Ljava/util/List;

    .line 30
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lru/fokus/tetrad/HomeworkPickerActivity;->selected:Ljava/util/Set;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lru/fokus/tetrad/HomeworkPickerActivity;->days:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lru/fokus/tetrad/HomeworkPickerActivity;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lru/fokus/tetrad/HomeworkPickerActivity;->selected:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$100(Lru/fokus/tetrad/HomeworkPickerActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lru/fokus/tetrad/HomeworkPickerActivity;->all:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$202(Lru/fokus/tetrad/HomeworkPickerActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lru/fokus/tetrad/HomeworkPickerActivity;->day:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lru/fokus/tetrad/HomeworkPickerActivity;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lru/fokus/tetrad/HomeworkPickerActivity;->render()V

    return-void
.end method

.method static synthetic access$400(Lru/fokus/tetrad/HomeworkPickerActivity;)Landroid/widget/ScrollView;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lru/fokus/tetrad/HomeworkPickerActivity;->scroll:Landroid/widget/ScrollView;

    return-object v0
.end method

.method private card(Lru/fokus/tetrad/Mesh$Hw;)Landroid/view/View;
    .locals 11

    .prologue
    const/high16 v10, 0x41700000    # 15.0f

    const/high16 v8, 0x41600000    # 14.0f

    const/high16 v1, 0x40000000    # 2.0f

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    .line 145
    iget-object v0, p0, Lru/fokus/tetrad/HomeworkPickerActivity;->selected:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    .line 146
    iget-object v0, p1, Lru/fokus/tetrad/Mesh$Hw;->text:Ljava/lang/String;

    invoke-static {v0}, Lru/fokus/tetrad/Homework;->guess(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 147
    const/16 v0, 0x8

    invoke-static {p0, v0}, Lru/fokus/tetrad/Ui;->col(Landroid/content/Context;I)Landroid/widget/LinearLayout;

    move-result-object v6

    .line 148
    const/high16 v0, 0x41800000    # 16.0f

    invoke-static {v0}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v0

    invoke-static {v8}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v3

    const/high16 v7, 0x41800000    # 16.0f

    invoke-static {v7}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v7

    invoke-static {v8}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v8

    invoke-virtual {v6, v0, v3, v7, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 149
    sget v7, Lru/fokus/tetrad/Ui;->CARD:I

    const/high16 v8, 0x41900000    # 18.0f

    if-eqz v4, :cond_1

    sget v0, Lru/fokus/tetrad/Ui;->INK:I

    move v3, v0

    :goto_0
    if-eqz v4, :cond_2

    move v0, v1

    :goto_1
    invoke-static {v7, v8, v3, v0}, Lru/fokus/tetrad/Ui;->round(IFIF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    const v3, 0x22808080

    const/high16 v7, 0x41900000    # 18.0f

    invoke-static {v0, v3, v7}, Lru/fokus/tetrad/Ui;->ripple(Landroid/graphics/drawable/Drawable;IF)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 150
    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 151
    new-instance v0, Lru/fokus/tetrad/HomeworkPickerActivity$4;

    invoke-direct {v0, p0, p1}, Lru/fokus/tetrad/HomeworkPickerActivity$4;-><init>(Lru/fokus/tetrad/HomeworkPickerActivity;Lru/fokus/tetrad/Mesh$Hw;)V

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    const/16 v0, 0xa

    invoke-static {p0, v0}, Lru/fokus/tetrad/Ui;->row(Landroid/content/Context;I)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 157
    if-eqz v4, :cond_3

    const-string v0, "\u2713"

    :goto_2
    sget v7, Lru/fokus/tetrad/Ui;->ON_INK:I

    sget-object v8, Lru/fokus/tetrad/Ui;->BOLD:Landroid/graphics/Typeface;

    invoke-static {p0, v0, v10, v7, v8}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v7

    .line 158
    const/16 v0, 0x11

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 159
    if-eqz v4, :cond_4

    sget v0, Lru/fokus/tetrad/Ui;->INK:I

    const v1, 0x4479c000    # 999.0f

    const/4 v4, 0x0

    invoke-static {v0, v1, v9, v4}, Lru/fokus/tetrad/Ui;->round(IFIF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    :goto_3
    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 160
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x41d00000    # 26.0f

    invoke-static {v1}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v1

    const/high16 v4, 0x41d00000    # 26.0f

    invoke-static {v4}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v4

    invoke-direct {v0, v1, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 161
    iget-object v0, p1, Lru/fokus/tetrad/Mesh$Hw;->subject:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "\u0417\u0430\u0434\u0430\u043d\u0438\u0435"

    :goto_4
    const/high16 v1, 0x41880000    # 17.0f

    sget v4, Lru/fokus/tetrad/Ui;->FG:I

    sget-object v7, Lru/fokus/tetrad/Ui;->BOLD:Landroid/graphics/Typeface;

    invoke-static {p0, v0, v1, v4, v7}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v2}, Lru/fokus/tetrad/Ui;->weight(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 162
    iget-boolean v0, p1, Lru/fokus/tetrad/Mesh$Hw;->done:Z

    if-eqz v0, :cond_0

    const-string v0, "\u0441\u0434\u0435\u043b\u0430\u043d\u043e"

    sget v1, Lru/fokus/tetrad/Ui;->OK:I

    sget v2, Lru/fokus/tetrad/Ui;->OK_SOFT:I

    invoke-static {p0, v0, v1, v2}, Lru/fokus/tetrad/Ui;->pill(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 163
    :cond_0
    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 165
    iget-object v0, p1, Lru/fokus/tetrad/Mesh$Hw;->text:Ljava/lang/String;

    sget v1, Lru/fokus/tetrad/Ui;->FG:I

    sget-object v2, Lru/fokus/tetrad/Ui;->BODY:Landroid/graphics/Typeface;

    invoke-static {p0, v0, v10, v1, v2}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v0

    .line 166
    const/high16 v1, 0x42100000    # 36.0f

    invoke-static {v1}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v1

    invoke-virtual {v0, v1, v9, v9, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 167
    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 169
    const-string v0, "oral"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget v0, Lru/fokus/tetrad/Ui;->OK:I

    .line 170
    :goto_5
    const-string v1, "oral"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    sget v1, Lru/fokus/tetrad/Ui;->OK_SOFT:I

    .line 171
    :goto_6
    const-string v2, "oral"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "\u0423\u0441\u0442\u043d\u043e\u0435 \u00b7 \u0431\u043b\u0438\u0446-\u043e\u043f\u0440\u043e\u0441"

    .line 172
    :goto_7
    invoke-static {p0, v9}, Lru/fokus/tetrad/Ui;->row(Landroid/content/Context;I)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 173
    const/high16 v4, 0x42100000    # 36.0f

    invoke-static {v4}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v4

    invoke-virtual {v3, v4, v9, v9, v9}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 174
    invoke-static {p0, v2, v0, v1}, Lru/fokus/tetrad/Ui;->pill(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 175
    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 176
    return-object v6

    .line 149
    :cond_1
    sget v0, Lru/fokus/tetrad/Ui;->LINE:I

    move v3, v0

    goto/16 :goto_0

    :cond_2
    move v0, v2

    goto/16 :goto_1

    .line 157
    :cond_3
    const-string v0, ""

    goto/16 :goto_2

    .line 159
    :cond_4
    const v0, 0x4479c000    # 999.0f

    sget v4, Lru/fokus/tetrad/Ui;->LINE:I

    invoke-static {v9, v0, v4, v1}, Lru/fokus/tetrad/Ui;->round(IFIF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    goto/16 :goto_3

    .line 161
    :cond_5
    iget-object v0, p1, Lru/fokus/tetrad/Mesh$Hw;->subject:Ljava/lang/String;

    goto/16 :goto_4

    .line 169
    :cond_6
    const-string v0, "external"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget v0, Lru/fokus/tetrad/Ui;->WARN:I

    goto :goto_5

    :cond_7
    sget v0, Lru/fokus/tetrad/Ui;->INK:I

    goto :goto_5

    .line 170
    :cond_8
    const-string v1, "external"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    sget v1, Lru/fokus/tetrad/Ui;->WARN_SOFT:I

    goto :goto_6

    :cond_9
    sget v1, Lru/fokus/tetrad/Ui;->INK_SOFT:I

    goto :goto_6

    .line 171
    :cond_a
    const-string v2, "external"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    const-string v2, "\u0417\u0430\u0434\u0430\u043d\u0438\u0435 \u0432 \u0434\u0440\u0443\u0433\u043e\u043c \u043c\u0435\u0441\u0442\u0435 \u00b7 \u043d\u0443\u0436\u043d\u043e \u0444\u043e\u0442\u043e \u0438\u043b\u0438 \u0442\u0435\u043a\u0441\u0442"

    goto :goto_7

    :cond_b
    const-string v2, "\u041f\u0438\u0441\u044c\u043c\u0435\u043d\u043d\u043e\u0435 \u00b7 \u043f\u0440\u043e\u0432\u0435\u0440\u043a\u0430 \u043f\u043e \u0444\u043e\u0442\u043e"

    goto :goto_7
.end method

.method private chipLabel(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 105
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "\u0411\u0435\u0437 \u0434\u0430\u0442\u044b"

    .line 115
    :goto_0
    return-object p1

    .line 107
    :cond_0
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 108
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 109
    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 110
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 111
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-ne v4, v3, :cond_1

    const/4 v4, 0x6

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-ne v4, v2, :cond_1

    const-string p1, "\u0421\u0435\u0433\u043e\u0434\u043d\u044f"

    goto :goto_0

    .line 112
    :cond_1
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-ne v4, v3, :cond_2

    const/4 v3, 0x6

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit8 v2, v2, 0x1

    if-ne v1, v2, :cond_2

    const-string p1, "\u0417\u0430\u0432\u0442\u0440\u0430"

    goto :goto_0

    .line 113
    :cond_2
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "EE, d MMM"

    new-instance v3, Ljava/util/Locale;

    const-string v4, "ru"

    invoke-direct {v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 114
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    goto :goto_0

    .line 115
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private countFor(Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 119
    const/4 v0, 0x0

    .line 120
    iget-object v1, p0, Lru/fokus/tetrad/HomeworkPickerActivity;->all:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/fokus/tetrad/Mesh$Hw;

    iget-object v0, v0, Lru/fokus/tetrad/Mesh$Hw;->date:Ljava/lang/String;

    invoke-static {v0}, Lru/fokus/tetrad/HomeworkPickerActivity;->key(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    add-int/lit8 v0, v1, 0x1

    :goto_1
    move v1, v0

    goto :goto_0

    .line 121
    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private static key(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    const/16 v1, 0xa

    .line 102
    if-nez p0, :cond_1

    const-string p0, ""

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private render()V
    .locals 8

    .prologue
    .line 125
    iget-object v0, p0, Lru/fokus/tetrad/HomeworkPickerActivity;->dayRow:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 126
    iget-object v0, p0, Lru/fokus/tetrad/HomeworkPickerActivity;->days:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 127
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v0}, Lru/fokus/tetrad/HomeworkPickerActivity;->chipLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \u00b7 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, v0}, Lru/fokus/tetrad/HomeworkPickerActivity;->countFor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lru/fokus/tetrad/HomeworkPickerActivity;->day:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {p0, v2, v3}, Lru/fokus/tetrad/Ui;->chip(Landroid/content/Context;Ljava/lang/String;Z)Landroid/widget/TextView;

    move-result-object v2

    .line 128
    new-instance v3, Lru/fokus/tetrad/HomeworkPickerActivity$3;

    invoke-direct {v3, p0, v0}, Lru/fokus/tetrad/HomeworkPickerActivity$3;-><init>(Lru/fokus/tetrad/HomeworkPickerActivity;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    iget-object v0, p0, Lru/fokus/tetrad/HomeworkPickerActivity;->dayRow:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 132
    :cond_0
    iget-object v0, p0, Lru/fokus/tetrad/HomeworkPickerActivity;->list:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 133
    iget-object v0, p0, Lru/fokus/tetrad/HomeworkPickerActivity;->list:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lru/fokus/tetrad/HomeworkPickerActivity;->day:Ljava/lang/String;

    invoke-static {v1}, Lru/fokus/tetrad/Mesh;->dayLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x41700000    # 15.0f

    sget v3, Lru/fokus/tetrad/Ui;->MUTED:I

    sget-object v4, Lru/fokus/tetrad/Ui;->MEDIUM:Landroid/graphics/Typeface;

    invoke-static {p0, v1, v2, v3, v4}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 134
    iget-object v0, p0, Lru/fokus/tetrad/HomeworkPickerActivity;->all:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/fokus/tetrad/Mesh$Hw;

    .line 135
    iget-object v2, v0, Lru/fokus/tetrad/Mesh$Hw;->date:Ljava/lang/String;

    invoke-static {v2}, Lru/fokus/tetrad/HomeworkPickerActivity;->key(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lru/fokus/tetrad/HomeworkPickerActivity;->day:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 136
    iget-object v2, p0, Lru/fokus/tetrad/HomeworkPickerActivity;->list:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lru/fokus/tetrad/HomeworkPickerActivity;->card(Lru/fokus/tetrad/Mesh$Hw;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 139
    :cond_2
    iget-object v0, p0, Lru/fokus/tetrad/HomeworkPickerActivity;->selected:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    .line 140
    iget-object v2, p0, Lru/fokus/tetrad/HomeworkPickerActivity;->take:Landroid/widget/TextView;

    if-nez v1, :cond_3

    const-string v0, "\u041e\u0442\u043c\u0435\u0442\u044c \u0437\u0430\u0434\u0430\u043d\u0438\u044f"

    :goto_2
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    iget-object v2, p0, Lru/fokus/tetrad/HomeworkPickerActivity;->take:Landroid/widget/TextView;

    if-lez v1, :cond_4

    const/4 v0, 0x1

    :goto_3
    invoke-static {v2, v0}, Lru/fokus/tetrad/Ui;->setEnabled(Landroid/view/View;Z)V

    .line 142
    return-void

    .line 140
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u0412\u0437\u044f\u0442\u044c "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    int-to-long v4, v1

    const-string v3, "\u0437\u0430\u0434\u0430\u043d\u0438\u0435"

    const-string v6, "\u0437\u0430\u0434\u0430\u043d\u0438\u044f"

    const-string v7, "\u0437\u0430\u0434\u0430\u043d\u0438\u0439"

    invoke-static {v4, v5, v3, v6, v7}, Lru/fokus/tetrad/Ui;->plural(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 141
    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12

    .prologue
    const/high16 v6, 0x42300000    # 44.0f

    const/high16 v11, 0x3f800000    # 1.0f

    const/16 v10, 0xc

    const/high16 v9, 0x41900000    # 18.0f

    const/4 v8, 0x0

    .line 38
    invoke-static {p0, v8}, Lru/fokus/tetrad/Ui;->applyTheme(Landroid/app/Activity;Z)V

    .line 39
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    sget v0, Lru/fokus/tetrad/Ui;->BG:I

    sget-boolean v1, Lru/fokus/tetrad/Ui;->night:Z

    invoke-static {p0, v0, v1}, Lru/fokus/tetrad/Ui;->paintBars(Landroid/app/Activity;IZ)V

    .line 41
    sget-object v0, Lru/fokus/tetrad/HomeworkPickerActivity;->input:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lru/fokus/tetrad/HomeworkPickerActivity;->finish()V

    .line 100
    :goto_0
    return-void

    .line 42
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lru/fokus/tetrad/HomeworkPickerActivity;->input:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lru/fokus/tetrad/HomeworkPickerActivity;->all:Ljava/util/List;

    .line 43
    const/4 v0, 0x0

    sput-object v0, Lru/fokus/tetrad/HomeworkPickerActivity;->result:Ljava/util/List;

    .line 45
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    .line 46
    iget-object v0, p0, Lru/fokus/tetrad/HomeworkPickerActivity;->all:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/fokus/tetrad/Mesh$Hw;

    iget-object v0, v0, Lru/fokus/tetrad/Mesh$Hw;->date:Ljava/lang/String;

    invoke-static {v0}, Lru/fokus/tetrad/HomeworkPickerActivity;->key(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 47
    :cond_1
    iget-object v0, p0, Lru/fokus/tetrad/HomeworkPickerActivity;->days:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 49
    iget-object v0, p0, Lru/fokus/tetrad/HomeworkPickerActivity;->days:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 50
    iget-object v1, p0, Lru/fokus/tetrad/HomeworkPickerActivity;->all:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lru/fokus/tetrad/Mesh$Hw;

    iget-object v4, v1, Lru/fokus/tetrad/Mesh$Hw;->date:Ljava/lang/String;

    invoke-static {v4}, Lru/fokus/tetrad/HomeworkPickerActivity;->key(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-boolean v1, v1, Lru/fokus/tetrad/Mesh$Hw;->done:Z

    if-nez v1, :cond_3

    iput-object v0, p0, Lru/fokus/tetrad/HomeworkPickerActivity;->day:Ljava/lang/String;

    .line 51
    :cond_4
    iget-object v0, p0, Lru/fokus/tetrad/HomeworkPickerActivity;->day:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 53
    :cond_5
    iget-object v0, p0, Lru/fokus/tetrad/HomeworkPickerActivity;->day:Ljava/lang/String;

    if-nez v0, :cond_6

    iget-object v0, p0, Lru/fokus/tetrad/HomeworkPickerActivity;->days:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lru/fokus/tetrad/HomeworkPickerActivity;->days:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lru/fokus/tetrad/HomeworkPickerActivity;->day:Ljava/lang/String;

    .line 54
    :cond_6
    iget-object v0, p0, Lru/fokus/tetrad/HomeworkPickerActivity;->all:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/fokus/tetrad/Mesh$Hw;

    iget-object v2, v0, Lru/fokus/tetrad/Mesh$Hw;->date:Ljava/lang/String;

    invoke-static {v2}, Lru/fokus/tetrad/HomeworkPickerActivity;->key(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lru/fokus/tetrad/HomeworkPickerActivity;->day:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-boolean v2, v0, Lru/fokus/tetrad/Mesh$Hw;->done:Z

    if-nez v2, :cond_7

    iget-object v2, p0, Lru/fokus/tetrad/HomeworkPickerActivity;->selected:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 56
    :cond_8
    invoke-static {p0, v8}, Lru/fokus/tetrad/Ui;->col(Landroid/content/Context;I)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 57
    sget v1, Lru/fokus/tetrad/Ui;->BG:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 59
    invoke-static {p0, v10}, Lru/fokus/tetrad/Ui;->col(Landroid/content/Context;I)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 60
    invoke-static {v9}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v2

    const/high16 v3, 0x41600000    # 14.0f

    invoke-static {v3}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v3

    invoke-static {v9}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v4

    const/high16 v5, 0x41200000    # 10.0f

    invoke-static {v5}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 61
    invoke-static {p0, v10}, Lru/fokus/tetrad/Ui;->row(Landroid/content/Context;I)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 62
    const-string v3, "\u2190"

    const-string v4, "\u041d\u0430\u0437\u0430\u0434"

    invoke-static {p0, v3, v4}, Lru/fokus/tetrad/Ui;->iconButton(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v3

    .line 63
    new-instance v4, Lru/fokus/tetrad/HomeworkPickerActivity$1;

    invoke-direct {v4, p0}, Lru/fokus/tetrad/HomeworkPickerActivity$1;-><init>(Lru/fokus/tetrad/HomeworkPickerActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {v6}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v5

    invoke-static {v6}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    invoke-static {p0, v8}, Lru/fokus/tetrad/Ui;->col(Landroid/content/Context;I)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 66
    const-string v4, "\u0414\u043e\u043c\u0430\u0448\u043d\u0438\u0435 \u0437\u0430\u0434\u0430\u043d\u0438\u044f"

    const/high16 v5, 0x41a00000    # 20.0f

    sget v6, Lru/fokus/tetrad/Ui;->FG:I

    sget-object v7, Lru/fokus/tetrad/Ui;->BOLD:Landroid/graphics/Typeface;

    invoke-static {p0, v4, v5, v6, v7}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 67
    const-string v4, "\u0438\u0437 \u041c\u042d\u0428 \u00b7 \u043e\u0442\u043c\u0435\u0442\u044c, \u0447\u0442\u043e \u0434\u0435\u043b\u0430\u0435\u0448\u044c \u0441\u0435\u0439\u0447\u0430\u0441"

    const/high16 v5, 0x41500000    # 13.0f

    sget v6, Lru/fokus/tetrad/Ui;->MUTED:I

    sget-object v7, Lru/fokus/tetrad/Ui;->BODY:Landroid/graphics/Typeface;

    invoke-static {p0, v4, v5, v6, v7}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 68
    invoke-static {v11}, Lru/fokus/tetrad/Ui;->weight(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 69
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 70
    new-instance v2, Landroid/widget/HorizontalScrollView;

    invoke-direct {v2, p0}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 71
    invoke-virtual {v2, v8}, Landroid/widget/HorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 72
    const/16 v3, 0x8

    invoke-static {p0, v3}, Lru/fokus/tetrad/Ui;->row(Landroid/content/Context;I)Landroid/widget/LinearLayout;

    move-result-object v3

    iput-object v3, p0, Lru/fokus/tetrad/HomeworkPickerActivity;->dayRow:Landroid/widget/LinearLayout;

    .line 73
    iget-object v3, p0, Lru/fokus/tetrad/HomeworkPickerActivity;->dayRow:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;)V

    .line 74
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 75
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 77
    new-instance v1, Landroid/widget/ScrollView;

    invoke-direct {v1, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lru/fokus/tetrad/HomeworkPickerActivity;->scroll:Landroid/widget/ScrollView;

    .line 78
    invoke-static {p0, v10}, Lru/fokus/tetrad/Ui;->col(Landroid/content/Context;I)Landroid/widget/LinearLayout;

    move-result-object v1

    iput-object v1, p0, Lru/fokus/tetrad/HomeworkPickerActivity;->list:Landroid/widget/LinearLayout;

    .line 79
    iget-object v1, p0, Lru/fokus/tetrad/HomeworkPickerActivity;->list:Landroid/widget/LinearLayout;

    invoke-static {v9}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v2

    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {v3}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v3

    invoke-static {v9}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v4

    const/high16 v5, 0x41c00000    # 24.0f

    invoke-static {v5}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 80
    iget-object v1, p0, Lru/fokus/tetrad/HomeworkPickerActivity;->scroll:Landroid/widget/ScrollView;

    iget-object v2, p0, Lru/fokus/tetrad/HomeworkPickerActivity;->list:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 81
    iget-object v1, p0, Lru/fokus/tetrad/HomeworkPickerActivity;->scroll:Landroid/widget/ScrollView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v8, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    invoke-static {p0, v8}, Lru/fokus/tetrad/Ui;->col(Landroid/content/Context;I)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 84
    invoke-static {v9}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v2

    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {v3}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v3

    invoke-static {v9}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v4

    const/high16 v5, 0x41800000    # 16.0f

    invoke-static {v5}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 85
    sget v2, Lru/fokus/tetrad/Ui;->CARD:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 86
    const-string v2, ""

    const/4 v3, 0x1

    invoke-static {p0, v2, v8, v3}, Lru/fokus/tetrad/Ui;->button(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Lru/fokus/tetrad/HomeworkPickerActivity;->take:Landroid/widget/TextView;

    .line 87
    iget-object v2, p0, Lru/fokus/tetrad/HomeworkPickerActivity;->take:Landroid/widget/TextView;

    new-instance v3, Lru/fokus/tetrad/HomeworkPickerActivity$2;

    invoke-direct {v3, p0}, Lru/fokus/tetrad/HomeworkPickerActivity$2;-><init>(Lru/fokus/tetrad/HomeworkPickerActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    iget-object v2, p0, Lru/fokus/tetrad/HomeworkPickerActivity;->take:Landroid/widget/TextView;

    invoke-static {}, Lru/fokus/tetrad/Ui;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 96
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 98
    invoke-virtual {p0, v0}, Lru/fokus/tetrad/HomeworkPickerActivity;->setContentView(Landroid/view/View;)V

    .line 99
    invoke-direct {p0}, Lru/fokus/tetrad/HomeworkPickerActivity;->render()V

    goto/16 :goto_0
.end method
