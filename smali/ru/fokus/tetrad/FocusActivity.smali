.class public Lru/fokus/tetrad/FocusActivity;
.super Landroid/app/Activity;
.source "FocusActivity.java"


# static fields
.field public static final EXTRA_BLOCKED:Ljava/lang/String; = "blocked"


# instance fields
.field private attemptsTv:Landroid/widget/TextView;

.field private final h:Landroid/os/Handler;

.field private progress:Lru/fokus/tetrad/Ui$Progress;

.field private quitBox:Landroid/widget/LinearLayout;

.field private quitCountdown:I

.field private quitYes:Landroid/widget/TextView;

.field private store:Lru/fokus/tetrad/Store;

.field private final tick:Ljava/lang/Runnable;

.field private timeUpBox:Landroid/widget/LinearLayout;

.field private timeUpShown:Z

.field private timer:Landroid/widget/TextView;

.field private until:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 40
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lru/fokus/tetrad/FocusActivity;->h:Landroid/os/Handler;

    .line 44
    iput-boolean v2, p0, Lru/fokus/tetrad/FocusActivity;->timeUpShown:Z

    .line 45
    iput v2, p0, Lru/fokus/tetrad/FocusActivity;->quitCountdown:I

    .line 47
    new-instance v0, Lru/fokus/tetrad/FocusActivity$1;

    invoke-direct {v0, p0}, Lru/fokus/tetrad/FocusActivity$1;-><init>(Lru/fokus/tetrad/FocusActivity;)V

    iput-object v0, p0, Lru/fokus/tetrad/FocusActivity;->tick:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lru/fokus/tetrad/FocusActivity;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lru/fokus/tetrad/FocusActivity;->update()V

    return-void
.end method

.method static synthetic access$100(Lru/fokus/tetrad/FocusActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lru/fokus/tetrad/FocusActivity;->h:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lru/fokus/tetrad/FocusActivity;)Lru/fokus/tetrad/Store;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lru/fokus/tetrad/FocusActivity;->store:Lru/fokus/tetrad/Store;

    return-object v0
.end method

.method static synthetic access$302(Lru/fokus/tetrad/FocusActivity;Z)Z
    .locals 0

    .prologue
    .line 36
    iput-boolean p1, p0, Lru/fokus/tetrad/FocusActivity;->timeUpShown:Z

    return p1
.end method

.method static synthetic access$400(Lru/fokus/tetrad/FocusActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lru/fokus/tetrad/FocusActivity;->timeUpBox:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$500(Lru/fokus/tetrad/FocusActivity;)I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lru/fokus/tetrad/FocusActivity;->quitCountdown:I

    return v0
.end method

.method static synthetic access$502(Lru/fokus/tetrad/FocusActivity;I)I
    .locals 0

    .prologue
    .line 36
    iput p1, p0, Lru/fokus/tetrad/FocusActivity;->quitCountdown:I

    return p1
.end method

.method static synthetic access$600(Lru/fokus/tetrad/FocusActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lru/fokus/tetrad/FocusActivity;->quitBox:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$700(Lru/fokus/tetrad/FocusActivity;Z)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lru/fokus/tetrad/FocusActivity;->finishLesson(Z)V

    return-void
.end method

.method static synthetic access$800(Lru/fokus/tetrad/FocusActivity;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lru/fokus/tetrad/FocusActivity;->askQuit()V

    return-void
.end method

.method static appName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 241
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 242
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 243
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 244
    :goto_0
    return-object p1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static appNames(Landroid/content/Context;Ljava/util/Set;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 248
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 249
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p0, v0}, Lru/fokus/tetrad/FocusActivity;->appName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 250
    :cond_0
    sget-object v0, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 251
    return-object v1
.end method

.method private askQuit()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 223
    iget-object v0, p0, Lru/fokus/tetrad/FocusActivity;->quitBox:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 224
    const/16 v0, 0x14

    iput v0, p0, Lru/fokus/tetrad/FocusActivity;->quitCountdown:I

    .line 225
    iget-object v0, p0, Lru/fokus/tetrad/FocusActivity;->quitYes:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lru/fokus/tetrad/Ui;->setEnabled(Landroid/view/View;Z)V

    .line 226
    iget-object v0, p0, Lru/fokus/tetrad/FocusActivity;->quitYes:Landroid/widget/TextView;

    const-string v1, "\u0417\u0430\u043a\u043e\u043d\u0447\u0438\u0442\u044c (10)"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    return-void
.end method

.method private build()V
    .locals 13

    .prologue
    const v12, -0x110e01

    const v11, -0x5c532a

    const/high16 v10, 0x41600000    # 14.0f

    const/4 v9, 0x0

    const/high16 v8, 0x41800000    # 16.0f

    .line 88
    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 89
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 90
    const v1, -0xf1ebd0

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setBackgroundColor(I)V

    .line 91
    const/16 v1, 0x16

    invoke-static {p0, v1}, Lru/fokus/tetrad/Ui;->col(Landroid/content/Context;I)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 92
    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 93
    const/high16 v2, 0x41b00000    # 22.0f

    invoke-static {v2}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v2

    const/high16 v3, 0x42000000    # 32.0f

    invoke-static {v3}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v3

    const/high16 v4, 0x41b00000    # 22.0f

    invoke-static {v4}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v4

    const/high16 v5, 0x41e00000    # 28.0f

    invoke-static {v5}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 94
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 96
    const-string v2, ""

    const/high16 v3, 0x41700000    # 15.0f

    sget-object v4, Lru/fokus/tetrad/Ui;->MEDIUM:Landroid/graphics/Typeface;

    invoke-static {p0, v2, v3, v11, v4}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Lru/fokus/tetrad/FocusActivity;->until:Landroid/widget/TextView;

    .line 97
    iget-object v2, p0, Lru/fokus/tetrad/FocusActivity;->until:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 99
    const-string v2, ""

    const/high16 v3, 0x42a00000    # 80.0f

    sget-object v4, Lru/fokus/tetrad/Ui;->DISPLAY:Landroid/graphics/Typeface;

    invoke-static {p0, v2, v3, v12, v4}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Lru/fokus/tetrad/FocusActivity;->timer:Landroid/widget/TextView;

    .line 100
    iget-object v2, p0, Lru/fokus/tetrad/FocusActivity;->timer:Landroid/widget/TextView;

    const-string v3, "tnum"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setFontFeatureSettings(Ljava/lang/String;)V

    .line 101
    iget-object v2, p0, Lru/fokus/tetrad/FocusActivity;->timer:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 102
    iget-object v2, p0, Lru/fokus/tetrad/FocusActivity;->timer:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 104
    new-instance v2, Lru/fokus/tetrad/Ui$Progress;

    const v3, -0xe5ddb0

    const v4, -0x715a01

    invoke-direct {v2, p0, v3, v4}, Lru/fokus/tetrad/Ui$Progress;-><init>(Landroid/content/Context;II)V

    iput-object v2, p0, Lru/fokus/tetrad/FocusActivity;->progress:Lru/fokus/tetrad/Ui$Progress;

    .line 105
    iget-object v2, p0, Lru/fokus/tetrad/FocusActivity;->progress:Lru/fokus/tetrad/Ui$Progress;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/high16 v5, 0x41000000    # 8.0f

    invoke-static {v5}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 107
    iget-object v2, p0, Lru/fokus/tetrad/FocusActivity;->store:Lru/fokus/tetrad/Store;

    invoke-virtual {v2}, Lru/fokus/tetrad/Store;->lessonText()Ljava/lang/String;

    move-result-object v2

    .line 108
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 109
    const/4 v3, 0x6

    invoke-static {p0, v3}, Lru/fokus/tetrad/Ui;->col(Landroid/content/Context;I)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 110
    invoke-static {v8}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v4

    invoke-static {v10}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v5

    invoke-static {v8}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v6

    invoke-static {v10}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 111
    const v4, -0xe5ddb0

    const/4 v5, 0x0

    invoke-static {v4, v8, v9, v5}, Lru/fokus/tetrad/Ui;->round(IFIF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 112
    const-string v4, "\u0417\u0430\u0434\u0430\u043d\u0438\u0435"

    const/high16 v5, 0x41500000    # 13.0f

    sget-object v6, Lru/fokus/tetrad/Ui;->MEDIUM:Landroid/graphics/Typeface;

    invoke-static {p0, v4, v5, v11, v6}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 113
    sget-object v4, Lru/fokus/tetrad/Ui;->BODY:Landroid/graphics/Typeface;

    invoke-static {p0, v2, v8, v12, v4}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v2

    .line 114
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    .line 115
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 116
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 118
    :cond_0
    iget-object v2, p0, Lru/fokus/tetrad/FocusActivity;->store:Lru/fokus/tetrad/Store;

    invoke-virtual {v2}, Lru/fokus/tetrad/Store;->lessonPhotos()Ljava/util/List;

    move-result-object v2

    .line 119
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 120
    const/16 v3, 0x8

    invoke-static {p0, v3}, Lru/fokus/tetrad/Ui;->col(Landroid/content/Context;I)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 121
    const-string v4, "\u0417\u0430\u0434\u0430\u043d\u0438\u0435 \u2014 \u043d\u0430\u0436\u043c\u0438, \u0447\u0442\u043e\u0431\u044b \u0443\u0432\u0435\u043b\u0438\u0447\u0438\u0442\u044c"

    sget-object v5, Lru/fokus/tetrad/Ui;->MEDIUM:Landroid/graphics/Typeface;

    invoke-static {p0, v4, v10, v11, v5}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 122
    const/16 v4, 0x6e

    const/4 v5, 0x0

    invoke-static {p0, v2, v4, v5}, Lru/fokus/tetrad/Photos;->strip(Landroid/app/Activity;Ljava/util/List;ILru/fokus/tetrad/Photos$Remove;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 123
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 126
    :cond_1
    const-string v2, ""

    const/high16 v3, 0x41700000    # 15.0f

    sget-object v4, Lru/fokus/tetrad/Ui;->BODY:Landroid/graphics/Typeface;

    invoke-static {p0, v2, v3, v11, v4}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Lru/fokus/tetrad/FocusActivity;->attemptsTv:Landroid/widget/TextView;

    .line 127
    iget-object v2, p0, Lru/fokus/tetrad/FocusActivity;->attemptsTv:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 129
    invoke-static {p0}, Lru/fokus/tetrad/BlockerService;->isEnabled(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 130
    const-string v2, "\u0411\u043b\u043e\u043a\u0438\u0440\u043e\u0432\u043a\u0430 \u0432\u044b\u043a\u043b\u044e\u0447\u0435\u043d\u0430 \u2014 \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u044f \u043e\u0442\u043a\u0440\u044b\u0432\u0430\u044e\u0442\u0441\u044f. \u0412\u043a\u043b\u044e\u0447\u0438 \u0435\u0451 \u0432 \u043d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0430\u0445 (\u0448\u0435\u0441\u0442\u0435\u0440\u0451\u043d\u043a\u0430 \u043d\u0430 \u0433\u043b\u0430\u0432\u043d\u043e\u043c \u044d\u043a\u0440\u0430\u043d\u0435)."

    const/16 v3, -0x2f76

    sget-object v4, Lru/fokus/tetrad/Ui;->BODY:Landroid/graphics/Typeface;

    invoke-static {p0, v2, v10, v3, v4}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 133
    :cond_2
    const v2, -0xeccfa6

    invoke-direct {p0, v2}, Lru/fokus/tetrad/FocusActivity;->panel(I)Landroid/widget/LinearLayout;

    move-result-object v2

    iput-object v2, p0, Lru/fokus/tetrad/FocusActivity;->timeUpBox:Landroid/widget/LinearLayout;

    .line 134
    iget-object v2, p0, Lru/fokus/tetrad/FocusActivity;->timeUpBox:Landroid/widget/LinearLayout;

    const-string v3, "\u0412\u0440\u0435\u043c\u044f \u0432\u044b\u0448\u043b\u043e! \u0415\u0441\u043b\u0438 \u0432\u0441\u0451 \u0440\u0435\u0448\u0438\u043b \u2014 \u0441\u0444\u043e\u0442\u043e\u0433\u0440\u0430\u0444\u0438\u0440\u0443\u0439 \u0440\u0435\u0448\u0435\u043d\u0438\u0435. \u041d\u0435 \u0443\u0441\u043f\u0435\u043b \u2014 \u043f\u0440\u043e\u0434\u043b\u0438 \u0437\u0430\u043d\u044f\u0442\u0438\u0435."

    sget-object v4, Lru/fokus/tetrad/Ui;->BODY:Landroid/graphics/Typeface;

    invoke-static {p0, v3, v8, v12, v4}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 135
    const/16 v2, 0xa

    invoke-static {p0, v2}, Lru/fokus/tetrad/Ui;->row(Landroid/content/Context;I)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 136
    const-string v3, "+10 \u043c\u0438\u043d\u0443\u0442"

    const/4 v4, 0x5

    invoke-static {p0, v3, v4, v9}, Lru/fokus/tetrad/Ui;->button(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v3

    .line 137
    new-instance v4, Lru/fokus/tetrad/FocusActivity$2;

    invoke-direct {v4, p0}, Lru/fokus/tetrad/FocusActivity$2;-><init>(Lru/fokus/tetrad/FocusActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 146
    iget-object v3, p0, Lru/fokus/tetrad/FocusActivity;->timeUpBox:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 147
    iget-object v2, p0, Lru/fokus/tetrad/FocusActivity;->timeUpBox:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 148
    iget-object v2, p0, Lru/fokus/tetrad/FocusActivity;->timeUpBox:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 150
    const v2, -0xe5ddb0

    invoke-direct {p0, v2}, Lru/fokus/tetrad/FocusActivity;->panel(I)Landroid/widget/LinearLayout;

    move-result-object v2

    iput-object v2, p0, Lru/fokus/tetrad/FocusActivity;->quitBox:Landroid/widget/LinearLayout;

    .line 151
    iget-object v2, p0, Lru/fokus/tetrad/FocusActivity;->quitBox:Landroid/widget/LinearLayout;

    const-string v3, "\u0417\u0430\u043a\u043e\u043d\u0447\u0438\u0442\u044c \u0431\u0435\u0437 \u0432\u044b\u043f\u043e\u043b\u043d\u0435\u043d\u043d\u043e\u0433\u043e \u0437\u0430\u0434\u0430\u043d\u0438\u044f? \u0417\u0430\u043d\u044f\u0442\u0438\u0435 \u043f\u043e\u043f\u0430\u0434\u0451\u0442 \u0432 \u0438\u0441\u0442\u043e\u0440\u0438\u044e \u043a\u0430\u043a \u0431\u0440\u043e\u0448\u0435\u043d\u043d\u043e\u0435."

    sget-object v4, Lru/fokus/tetrad/Ui;->BODY:Landroid/graphics/Typeface;

    invoke-static {p0, v3, v8, v12, v4}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 152
    const/16 v2, 0xa

    invoke-static {p0, v2}, Lru/fokus/tetrad/Ui;->row(Landroid/content/Context;I)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 153
    const-string v3, "\u041f\u0440\u043e\u0434\u043e\u043b\u0436\u0438\u0442\u044c"

    const/4 v4, 0x4

    invoke-static {p0, v3, v4, v9}, Lru/fokus/tetrad/Ui;->button(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v3

    .line 154
    new-instance v4, Lru/fokus/tetrad/FocusActivity$3;

    invoke-direct {v4, p0}, Lru/fokus/tetrad/FocusActivity$3;-><init>(Lru/fokus/tetrad/FocusActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    const-string v4, "\u0417\u0430\u043a\u043e\u043d\u0447\u0438\u0442\u044c"

    const/4 v5, 0x5

    invoke-static {p0, v4, v5, v9}, Lru/fokus/tetrad/Ui;->button(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v4

    iput-object v4, p0, Lru/fokus/tetrad/FocusActivity;->quitYes:Landroid/widget/TextView;

    .line 156
    iget-object v4, p0, Lru/fokus/tetrad/FocusActivity;->quitYes:Landroid/widget/TextView;

    new-instance v5, Lru/fokus/tetrad/FocusActivity$4;

    invoke-direct {v5, p0}, Lru/fokus/tetrad/FocusActivity$4;-><init>(Lru/fokus/tetrad/FocusActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v4}, Lru/fokus/tetrad/Ui;->weight(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 158
    iget-object v3, p0, Lru/fokus/tetrad/FocusActivity;->quitYes:Landroid/widget/TextView;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v4}, Lru/fokus/tetrad/Ui;->weight(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 159
    iget-object v3, p0, Lru/fokus/tetrad/FocusActivity;->quitBox:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 160
    iget-object v2, p0, Lru/fokus/tetrad/FocusActivity;->quitBox:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 161
    iget-object v2, p0, Lru/fokus/tetrad/FocusActivity;->quitBox:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 163
    const-string v2, "\u0413\u043e\u0442\u043e\u0432\u043e \u2014 \u043f\u0440\u043e\u0432\u0435\u0440\u0438\u0442\u044c \u0440\u0435\u0448\u0435\u043d\u0438\u0435"

    const/4 v3, 0x4

    const/4 v4, 0x1

    invoke-static {p0, v2, v3, v4}, Lru/fokus/tetrad/Ui;->button(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v2

    .line 164
    new-instance v3, Lru/fokus/tetrad/FocusActivity$5;

    invoke-direct {v3, p0}, Lru/fokus/tetrad/FocusActivity$5;-><init>(Lru/fokus/tetrad/FocusActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    invoke-static {}, Lru/fokus/tetrad/Ui;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 166
    const-string v2, "\u0417\u0430\u043a\u043e\u043d\u0447\u0438\u0442\u044c \u0434\u043e\u0441\u0440\u043e\u0447\u043d\u043e"

    const/4 v3, 0x6

    invoke-static {p0, v2, v3, v9}, Lru/fokus/tetrad/Ui;->button(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v2

    .line 167
    new-instance v3, Lru/fokus/tetrad/FocusActivity$6;

    invoke-direct {v3, p0}, Lru/fokus/tetrad/FocusActivity$6;-><init>(Lru/fokus/tetrad/FocusActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    invoke-static {}, Lru/fokus/tetrad/Ui;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 174
    invoke-virtual {p0, v0}, Lru/fokus/tetrad/FocusActivity;->setContentView(Landroid/view/View;)V

    .line 175
    return-void
.end method

.method private chime()V
    .locals 3

    .prologue
    .line 210
    const/4 v0, 0x2

    :try_start_0
    invoke-static {v0}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    .line 211
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/Ringtone;->play()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 214
    :cond_0
    :goto_0
    :try_start_1
    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Lru/fokus/tetrad/FocusActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 215
    if-eqz v0, :cond_1

    .line 216
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_2

    const/4 v1, 0x4

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    const/4 v2, -0x1

    invoke-static {v1, v2}, Landroid/os/VibrationEffect;->createWaveform([JI)Landroid/os/VibrationEffect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    .line 220
    :cond_1
    :goto_1
    return-void

    .line 217
    :cond_2
    const/4 v1, 0x4

    new-array v1, v1, [J

    fill-array-data v1, :array_1

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate([JI)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 219
    :catch_0
    move-exception v0

    goto :goto_1

    .line 212
    :catch_1
    move-exception v0

    goto :goto_0

    .line 216
    :array_0
    .array-data 8
        0x0
        0x12c
        0x96
        0x12c
    .end array-data

    .line 217
    :array_1
    .array-data 8
        0x0
        0x12c
        0x96
        0x12c
    .end array-data
.end method

.method private finishLesson(Z)V
    .locals 3

    .prologue
    .line 230
    iget-object v0, p0, Lru/fokus/tetrad/FocusActivity;->store:Lru/fokus/tetrad/Store;

    invoke-virtual {v0, p1}, Lru/fokus/tetrad/Store;->finishSession(Z)Ljava/lang/String;

    .line 231
    invoke-static {p0}, Lru/fokus/tetrad/Notifier;->cancelAll(Landroid/content/Context;)V

    .line 232
    if-eqz p1, :cond_0

    .line 233
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lru/fokus/tetrad/CheckActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "fromLesson"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x10000000

    .line 234
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 233
    invoke-virtual {p0, v0}, Lru/fokus/tetrad/FocusActivity;->startActivity(Landroid/content/Intent;)V

    .line 235
    invoke-virtual {p0}, Lru/fokus/tetrad/FocusActivity;->finish()V

    .line 237
    :goto_0
    return-void

    .line 236
    :cond_0
    invoke-direct {p0}, Lru/fokus/tetrad/FocusActivity;->goMain()V

    goto :goto_0
.end method

.method private goMain()V
    .locals 2

    .prologue
    .line 83
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lru/fokus/tetrad/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lru/fokus/tetrad/FocusActivity;->startActivity(Landroid/content/Intent;)V

    .line 84
    invoke-virtual {p0}, Lru/fokus/tetrad/FocusActivity;->finish()V

    .line 85
    return-void
.end method

.method private panel(I)Landroid/widget/LinearLayout;
    .locals 6

    .prologue
    const/high16 v4, 0x41600000    # 14.0f

    const/high16 v5, 0x41800000    # 16.0f

    .line 178
    const/16 v0, 0xc

    invoke-static {p0, v0}, Lru/fokus/tetrad/Ui;->col(Landroid/content/Context;I)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 179
    invoke-static {v5}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v1

    invoke-static {v4}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v2

    invoke-static {v5}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v3

    invoke-static {v4}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 180
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1, v5, v1, v2}, Lru/fokus/tetrad/Ui;->round(IFIF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 181
    return-object v0
.end method

.method private update()V
    .locals 11

    .prologue
    .line 185
    iget-object v0, p0, Lru/fokus/tetrad/FocusActivity;->store:Lru/fokus/tetrad/Store;

    invoke-virtual {v0}, Lru/fokus/tetrad/Store;->active()Z

    move-result v0

    if-nez v0, :cond_1

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 186
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lru/fokus/tetrad/FocusActivity;->store:Lru/fokus/tetrad/Store;

    invoke-virtual {v0}, Lru/fokus/tetrad/Store;->end()J

    move-result-wide v0

    sub-long v4, v0, v2

    iget-object v0, p0, Lru/fokus/tetrad/FocusActivity;->store:Lru/fokus/tetrad/Store;

    invoke-virtual {v0}, Lru/fokus/tetrad/Store;->end()J

    move-result-wide v0

    iget-object v6, p0, Lru/fokus/tetrad/FocusActivity;->store:Lru/fokus/tetrad/Store;

    invoke-virtual {v6}, Lru/fokus/tetrad/Store;->start()J

    move-result-wide v6

    sub-long v6, v0, v6

    .line 187
    const-wide/16 v0, 0x0

    cmp-long v0, v4, v0

    if-ltz v0, :cond_3

    invoke-static {v4, v5}, Lru/fokus/tetrad/Ui;->clock(J)Ljava/lang/String;

    move-result-object v0

    .line 188
    :goto_1
    iget-object v8, p0, Lru/fokus/tetrad/FocusActivity;->timer:Landroid/widget/TextView;

    const/4 v9, 0x2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v10, 0x5

    if-gt v1, v10, :cond_4

    const/high16 v1, 0x42a00000    # 80.0f

    :goto_2
    invoke-virtual {v8, v9, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 189
    iget-object v1, p0, Lru/fokus/tetrad/FocusActivity;->timer:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    iget-object v1, p0, Lru/fokus/tetrad/FocusActivity;->timer:Landroid/widget/TextView;

    const-wide/16 v8, 0x0

    cmp-long v0, v4, v8

    if-ltz v0, :cond_6

    const v0, -0x110e01

    :goto_3
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 191
    iget-object v0, p0, Lru/fokus/tetrad/FocusActivity;->progress:Lru/fokus/tetrad/Ui$Progress;

    iget-object v1, p0, Lru/fokus/tetrad/FocusActivity;->store:Lru/fokus/tetrad/Store;

    invoke-virtual {v1}, Lru/fokus/tetrad/Store;->start()J

    move-result-wide v8

    sub-long/2addr v2, v8

    long-to-float v1, v2

    long-to-float v2, v6

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lru/fokus/tetrad/Ui$Progress;->set(F)V

    .line 192
    iget-object v0, p0, Lru/fokus/tetrad/FocusActivity;->until:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u0417\u0430\u043d\u044f\u0442\u0438\u0435 \u0434\u043e "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "HH:mm"

    new-instance v6, Ljava/util/Locale;

    const-string v7, "ru"

    invoke-direct {v6, v7}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v3, Ljava/util/Date;

    iget-object v6, p0, Lru/fokus/tetrad/FocusActivity;->store:Lru/fokus/tetrad/Store;

    invoke-virtual {v6}, Lru/fokus/tetrad/Store;->end()J

    move-result-wide v6

    invoke-direct {v3, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    iget-object v0, p0, Lru/fokus/tetrad/FocusActivity;->store:Lru/fokus/tetrad/Store;

    invoke-virtual {v0}, Lru/fokus/tetrad/Store;->attempts()I

    move-result v0

    .line 194
    iget-object v1, p0, Lru/fokus/tetrad/FocusActivity;->attemptsTv:Landroid/widget/TextView;

    if-nez v0, :cond_7

    const-string v0, "\u041d\u0438 \u043e\u0434\u043d\u043e\u0439 \u043f\u043e\u043f\u044b\u0442\u043a\u0438 \u043e\u0442\u0432\u043b\u0435\u0447\u044c\u0441\u044f \u2014 \u0442\u0430\u043a \u0434\u0435\u0440\u0436\u0430\u0442\u044c!"

    :goto_4
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    const-wide/16 v0, 0x0

    cmp-long v0, v4, v0

    if-gtz v0, :cond_2

    iget-boolean v0, p0, Lru/fokus/tetrad/FocusActivity;->timeUpShown:Z

    if-nez v0, :cond_2

    .line 196
    const/4 v0, 0x1

    iput-boolean v0, p0, Lru/fokus/tetrad/FocusActivity;->timeUpShown:Z

    .line 197
    iget-object v0, p0, Lru/fokus/tetrad/FocusActivity;->timeUpBox:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 198
    iget-object v0, p0, Lru/fokus/tetrad/FocusActivity;->store:Lru/fokus/tetrad/Store;

    invoke-virtual {v0}, Lru/fokus/tetrad/Store;->timeUpNotified()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lru/fokus/tetrad/FocusActivity;->store:Lru/fokus/tetrad/Store;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lru/fokus/tetrad/Store;->setTimeUpNotified(Z)V

    invoke-direct {p0}, Lru/fokus/tetrad/FocusActivity;->chime()V

    .line 200
    :cond_2
    iget v0, p0, Lru/fokus/tetrad/FocusActivity;->quitCountdown:I

    if-lez v0, :cond_0

    .line 201
    iget v0, p0, Lru/fokus/tetrad/FocusActivity;->quitCountdown:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lru/fokus/tetrad/FocusActivity;->quitCountdown:I

    .line 202
    iget v0, p0, Lru/fokus/tetrad/FocusActivity;->quitCountdown:I

    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v0, v0, 0x2

    .line 203
    iget-object v1, p0, Lru/fokus/tetrad/FocusActivity;->quitYes:Landroid/widget/TextView;

    iget v2, p0, Lru/fokus/tetrad/FocusActivity;->quitCountdown:I

    if-lez v2, :cond_8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u0417\u0430\u043a\u043e\u043d\u0447\u0438\u0442\u044c ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_5
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    iget-object v1, p0, Lru/fokus/tetrad/FocusActivity;->quitYes:Landroid/widget/TextView;

    iget v0, p0, Lru/fokus/tetrad/FocusActivity;->quitCountdown:I

    if-gtz v0, :cond_9

    const/4 v0, 0x1

    :goto_6
    invoke-static {v1, v0}, Lru/fokus/tetrad/Ui;->setEnabled(Landroid/view/View;Z)V

    goto/16 :goto_0

    .line 187
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    neg-long v8, v4

    invoke-static {v8, v9}, Lru/fokus/tetrad/Ui;->clock(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 188
    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v10, 0x6

    if-gt v1, v10, :cond_5

    const/16 v1, 0x42

    :goto_7
    int-to-float v1, v1

    goto/16 :goto_2

    :cond_5
    const/16 v1, 0x36

    goto :goto_7

    .line 190
    :cond_6
    const/16 v0, -0x7576

    goto/16 :goto_3

    .line 194
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u041f\u043e\u043f\u044b\u0442\u043e\u043a \u043e\u0442\u043a\u0440\u044b\u0442\u044c \u0437\u0430\u043f\u0440\u0435\u0449\u0451\u043d\u043d\u043e\u0435: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    .line 203
    :cond_8
    const-string v0, "\u0417\u0430\u043a\u043e\u043d\u0447\u0438\u0442\u044c"

    goto :goto_5

    .line 204
    :cond_9
    const/4 v0, 0x0

    goto :goto_6
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .prologue
    .line 79
    const-string v0, "\u0421\u043d\u0430\u0447\u0430\u043b\u0430 \u0437\u0430\u043a\u043e\u043d\u0447\u0438 \u0437\u0430\u043d\u044f\u0442\u0438\u0435"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 80
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 52
    invoke-static {p0, v1}, Lru/fokus/tetrad/Ui;->applyTheme(Landroid/app/Activity;Z)V

    .line 53
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    new-instance v0, Lru/fokus/tetrad/Store;

    invoke-direct {v0, p0}, Lru/fokus/tetrad/Store;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lru/fokus/tetrad/FocusActivity;->store:Lru/fokus/tetrad/Store;

    .line 55
    iget-object v0, p0, Lru/fokus/tetrad/FocusActivity;->store:Lru/fokus/tetrad/Store;

    invoke-virtual {v0}, Lru/fokus/tetrad/Store;->active()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lru/fokus/tetrad/FocusActivity;->goMain()V

    .line 59
    :goto_0
    return-void

    .line 56
    :cond_0
    const v0, -0xf1ebd0

    invoke-static {p0, v0, v1}, Lru/fokus/tetrad/Ui;->paintBars(Landroid/app/Activity;IZ)V

    .line 57
    invoke-virtual {p0}, Lru/fokus/tetrad/FocusActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 58
    invoke-direct {p0}, Lru/fokus/tetrad/FocusActivity;->build()V

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 62
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 63
    iget-object v0, p0, Lru/fokus/tetrad/FocusActivity;->store:Lru/fokus/tetrad/Store;

    invoke-virtual {v0}, Lru/fokus/tetrad/Store;->active()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lru/fokus/tetrad/FocusActivity;->goMain()V

    .line 64
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 74
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 75
    iget-object v0, p0, Lru/fokus/tetrad/FocusActivity;->h:Landroid/os/Handler;

    iget-object v1, p0, Lru/fokus/tetrad/FocusActivity;->tick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 76
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 67
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 68
    iget-object v0, p0, Lru/fokus/tetrad/FocusActivity;->store:Lru/fokus/tetrad/Store;

    invoke-virtual {v0}, Lru/fokus/tetrad/Store;->active()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lru/fokus/tetrad/FocusActivity;->goMain()V

    .line 71
    :goto_0
    return-void

    .line 69
    :cond_0
    iget-object v0, p0, Lru/fokus/tetrad/FocusActivity;->h:Landroid/os/Handler;

    iget-object v1, p0, Lru/fokus/tetrad/FocusActivity;->tick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 70
    iget-object v0, p0, Lru/fokus/tetrad/FocusActivity;->h:Landroid/os/Handler;

    iget-object v1, p0, Lru/fokus/tetrad/FocusActivity;->tick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
