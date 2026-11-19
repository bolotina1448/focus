.class public Lru/fokus/tetrad/GuideActivity;
.super Landroid/app/Activity;
.source "GuideActivity.java"


# static fields
.field private static final STEPS:I = 0x5


# instance fields
.field private content:Landroid/widget/LinearLayout;

.field private step:I

.field private store:Lru/fokus/tetrad/Store;

.field private testMsg:Ljava/lang/String;

.field private testOk:Z

.field private testing:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 23
    iput v1, p0, Lru/fokus/tetrad/GuideActivity;->step:I

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lru/fokus/tetrad/GuideActivity;->testMsg:Ljava/lang/String;

    .line 25
    iput-boolean v1, p0, Lru/fokus/tetrad/GuideActivity;->testOk:Z

    iput-boolean v1, p0, Lru/fokus/tetrad/GuideActivity;->testing:Z

    return-void
.end method

.method static synthetic access$000(Lru/fokus/tetrad/GuideActivity;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lru/fokus/tetrad/GuideActivity;->finishGuide()V

    return-void
.end method

.method static synthetic access$110(Lru/fokus/tetrad/GuideActivity;)I
    .locals 2

    .prologue
    .line 18
    iget v0, p0, Lru/fokus/tetrad/GuideActivity;->step:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lru/fokus/tetrad/GuideActivity;->step:I

    return v0
.end method

.method static synthetic access$200(Lru/fokus/tetrad/GuideActivity;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lru/fokus/tetrad/GuideActivity;->render()V

    return-void
.end method

.method static synthetic access$300(Lru/fokus/tetrad/GuideActivity;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lru/fokus/tetrad/GuideActivity;->next()V

    return-void
.end method

.method static synthetic access$400(Lru/fokus/tetrad/GuideActivity;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lru/fokus/tetrad/GuideActivity;->testAi()V

    return-void
.end method

.method static synthetic access$500(Lru/fokus/tetrad/GuideActivity;)Lru/fokus/tetrad/Store;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lru/fokus/tetrad/GuideActivity;->store:Lru/fokus/tetrad/Store;

    return-object v0
.end method

.method static synthetic access$602(Lru/fokus/tetrad/GuideActivity;Z)Z
    .locals 0

    .prologue
    .line 18
    iput-boolean p1, p0, Lru/fokus/tetrad/GuideActivity;->testing:Z

    return p1
.end method

.method static synthetic access$702(Lru/fokus/tetrad/GuideActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lru/fokus/tetrad/GuideActivity;->testMsg:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$802(Lru/fokus/tetrad/GuideActivity;Z)Z
    .locals 0

    .prologue
    .line 18
    iput-boolean p1, p0, Lru/fokus/tetrad/GuideActivity;->testOk:Z

    return p1
.end method

.method private ai()V
    .locals 7

    .prologue
    const/high16 v6, 0x41c00000    # 24.0f

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 133
    const-string v0, "1"

    const-string v3, "\u041f\u043e\u0434\u043a\u043b\u044e\u0447\u0438 \u0418\u0418-\u0443\u0447\u0438\u0442\u0435\u043b\u044f"

    const-string v4, "\u041d\u0443\u0436\u0435\u043d, \u0447\u0442\u043e\u0431\u044b \u043f\u0440\u043e\u0432\u0435\u0440\u044f\u0442\u044c \u0440\u0435\u0448\u0435\u043d\u0438\u044f, \u043f\u0440\u043e\u0432\u043e\u0434\u0438\u0442\u044c \u043e\u043f\u0440\u043e\u0441\u044b \u0438 \u0440\u0430\u0441\u043f\u043e\u0437\u043d\u0430\u0432\u0430\u0442\u044c \u0440\u0430\u0441\u043f\u0438\u0441\u0430\u043d\u0438\u0435."

    invoke-direct {p0, v0, v3, v4}, Lru/fokus/tetrad/GuideActivity;->head(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lru/fokus/tetrad/GuideActivity;->store:Lru/fokus/tetrad/Store;

    invoke-virtual {v0}, Lru/fokus/tetrad/Store;->aiReady()Z

    move-result v4

    .line 135
    iget-object v0, p0, Lru/fokus/tetrad/GuideActivity;->content:Landroid/widget/LinearLayout;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u043f\u043e\u0434\u043a\u043b\u044e\u0447\u0451\u043d: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lru/fokus/tetrad/GuideActivity;->store:Lru/fokus/tetrad/Store;

    invoke-virtual {v5}, Lru/fokus/tetrad/Store;->aiName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "\u0435\u0449\u0451 \u043d\u0435 \u043f\u043e\u0434\u043a\u043b\u044e\u0447\u0451\u043d"

    invoke-direct {p0, v4, v3, v5}, Lru/fokus/tetrad/GuideActivity;->status(ZLjava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 136
    invoke-static {p0}, Lru/fokus/tetrad/Ui;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v5

    .line 137
    const-string v0, "\u041a\u0430\u043a \u043f\u043e\u0434\u043a\u043b\u044e\u0447\u0438\u0442\u044c"

    invoke-static {p0, v0}, Lru/fokus/tetrad/Ui;->title(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 138
    const-string v0, "1"

    const-string v3, "\u0412\u044b\u0431\u0435\u0440\u0438 \u043d\u0435\u0439\u0440\u043e\u0441\u0435\u0442\u044c: GigaChat (\u0432\u0445\u043e\u0434 \u0447\u0435\u0440\u0435\u0437 \u0421\u0431\u0435\u0440 ID) \u0438\u043b\u0438 GLM \u043e\u0442 Z.ai (\u0432\u0445\u043e\u0434 \u043f\u043e \u043f\u043e\u0447\u0442\u0435). \u041e\u0431\u0435 \u0431\u0435\u0441\u043f\u043b\u0430\u0442\u043d\u044b\u0435."

    invoke-direct {p0, v0, v3}, Lru/fokus/tetrad/GuideActivity;->step(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 139
    const-string v0, "2"

    const-string v3, "\u0412\u043e\u0439\u0434\u0438 \u043d\u0430 \u0441\u0430\u0439\u0442\u0435 \u0438 \u0441\u043e\u0437\u0434\u0430\u0439 \u043a\u043b\u044e\u0447: \u0432 GigaChat \u2014 \u00ab\u041d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0430 API\u00bb \u2192 \u00ab\u041f\u043e\u043b\u0443\u0447\u0438\u0442\u044c \u043a\u043b\u044e\u0447\u00bb, \u0432 Z.ai \u2014 \u00abAPI Keys\u00bb \u2192 \u00abCreate API Key\u00bb."

    invoke-direct {p0, v0, v3}, Lru/fokus/tetrad/GuideActivity;->step(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 140
    const-string v0, "3"

    const-string v3, "\u041d\u0430\u0436\u043c\u0438 \u00ab\u041a\u043e\u043f\u0438\u0440\u043e\u0432\u0430\u0442\u044c\u00bb \u0440\u044f\u0434\u043e\u043c \u0441 \u043a\u043b\u044e\u0447\u043e\u043c \u0438 \u0432\u0435\u0440\u043d\u0438\u0441\u044c \u0432 \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u0435 \u2014 \u043a\u043b\u044e\u0447 \u0432\u0441\u0442\u0430\u0432\u0438\u0442\u0441\u044f \u0441\u0430\u043c."

    invoke-direct {p0, v0, v3}, Lru/fokus/tetrad/GuideActivity;->step(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 141
    const-string v0, "4"

    const-string v3, "\u041d\u0430\u0436\u043c\u0438 \u00ab\u041f\u0440\u043e\u0432\u0435\u0440\u0438\u0442\u044c \u043f\u043e\u0434\u043a\u043b\u044e\u0447\u0435\u043d\u0438\u0435\u00bb."

    invoke-direct {p0, v0, v3}, Lru/fokus/tetrad/GuideActivity;->step(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 142
    if-eqz v4, :cond_2

    const-string v0, "\u0421\u043c\u0435\u043d\u0438\u0442\u044c \u0438\u043b\u0438 \u043f\u0435\u0440\u0435\u043f\u043e\u0434\u043a\u043b\u044e\u0447\u0438\u0442\u044c"

    move-object v3, v0

    :goto_0
    if-eqz v4, :cond_3

    move v0, v1

    :goto_1
    invoke-static {p0, v3, v0, v1}, Lru/fokus/tetrad/Ui;->button(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v0

    .line 143
    new-instance v3, Lru/fokus/tetrad/GuideActivity$4;

    invoke-direct {v3, p0}, Lru/fokus/tetrad/GuideActivity$4;-><init>(Lru/fokus/tetrad/GuideActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    invoke-static {}, Lru/fokus/tetrad/Ui;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v5, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 147
    if-eqz v4, :cond_1

    .line 148
    iget-boolean v0, p0, Lru/fokus/tetrad/GuideActivity;->testing:Z

    if-eqz v0, :cond_4

    const-string v0, "\u041f\u0440\u043e\u0432\u0435\u0440\u044f\u044e\u2026"

    :goto_2
    invoke-static {p0, v0, v2, v2}, Lru/fokus/tetrad/Ui;->button(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v0

    .line 149
    iget-boolean v3, p0, Lru/fokus/tetrad/GuideActivity;->testing:Z

    if-nez v3, :cond_5

    :goto_3
    invoke-static {v0, v1}, Lru/fokus/tetrad/Ui;->setEnabled(Landroid/view/View;Z)V

    .line 150
    new-instance v1, Lru/fokus/tetrad/GuideActivity$5;

    invoke-direct {v1, p0}, Lru/fokus/tetrad/GuideActivity$5;-><init>(Lru/fokus/tetrad/GuideActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    invoke-static {}, Lru/fokus/tetrad/Ui;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 152
    iget-boolean v0, p0, Lru/fokus/tetrad/GuideActivity;->testing:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroid/widget/ProgressBar;

    invoke-direct {v0, p0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {v6}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v2

    invoke-static {v6}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 153
    :cond_0
    iget-object v0, p0, Lru/fokus/tetrad/GuideActivity;->testMsg:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v1, p0, Lru/fokus/tetrad/GuideActivity;->testMsg:Ljava/lang/String;

    const/high16 v2, 0x41600000    # 14.0f

    iget-boolean v0, p0, Lru/fokus/tetrad/GuideActivity;->testOk:Z

    if-eqz v0, :cond_6

    sget v0, Lru/fokus/tetrad/Ui;->OK:I

    :goto_4
    sget-object v3, Lru/fokus/tetrad/Ui;->MEDIUM:Landroid/graphics/Typeface;

    invoke-static {p0, v1, v2, v0, v3}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 155
    :cond_1
    iget-object v0, p0, Lru/fokus/tetrad/GuideActivity;->content:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 156
    if-eqz v4, :cond_7

    const-string v0, "\u0414\u0430\u043b\u044c\u0448\u0435"

    :goto_5
    invoke-direct {p0, v0}, Lru/fokus/tetrad/GuideActivity;->nav(Ljava/lang/String;)V

    .line 157
    return-void

    .line 142
    :cond_2
    const-string v0, "\u041f\u043e\u0434\u043a\u043b\u044e\u0447\u0438\u0442\u044c \u0418\u0418"

    move-object v3, v0

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    .line 148
    :cond_4
    const-string v0, "\u041f\u0440\u043e\u0432\u0435\u0440\u0438\u0442\u044c \u043f\u043e\u0434\u043a\u043b\u044e\u0447\u0435\u043d\u0438\u0435"

    goto :goto_2

    :cond_5
    move v1, v2

    .line 149
    goto :goto_3

    .line 153
    :cond_6
    sget v0, Lru/fokus/tetrad/Ui;->RED:I

    goto :goto_4

    .line 156
    :cond_7
    const-string v0, "\u041f\u0440\u043e\u043f\u0443\u0441\u0442\u0438\u0442\u044c"

    goto :goto_5
.end method

.method private blocking()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 222
    const-string v0, "4"

    const-string v3, "\u0412\u043a\u043b\u044e\u0447\u0438 \u0431\u043b\u043e\u043a\u0438\u0440\u043e\u0432\u043a\u0443"

    const-string v4, "\u0427\u0442\u043e\u0431\u044b \u0432\u043e \u0432\u0440\u0435\u043c\u044f \u0437\u0430\u043d\u044f\u0442\u0438\u044f TikTok, \u0438\u0433\u0440\u044b \u0438 \u0441\u043e\u0446\u0441\u0435\u0442\u0438 \u043d\u0435 \u043e\u0442\u043a\u0440\u044b\u0432\u0430\u043b\u0438\u0441\u044c."

    invoke-direct {p0, v0, v3, v4}, Lru/fokus/tetrad/GuideActivity;->head(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    invoke-static {p0}, Lru/fokus/tetrad/BlockerService;->isEnabled(Landroid/content/Context;)Z

    move-result v4

    invoke-static {p0}, Lru/fokus/tetrad/BlockerService;->hasUsageAccess(Landroid/content/Context;)Z

    move-result v5

    invoke-static {p0}, Lru/fokus/tetrad/BlockerService;->batteryUnrestricted(Landroid/content/Context;)Z

    move-result v6

    .line 224
    iget-object v7, p0, Lru/fokus/tetrad/GuideActivity;->content:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_1

    if-eqz v5, :cond_1

    if-eqz v6, :cond_1

    move v0, v1

    :goto_0
    const-string v8, "\u0432\u0441\u0451 \u0432\u043a\u043b\u044e\u0447\u0435\u043d\u043e"

    if-eqz v4, :cond_2

    const-string v3, "\u0432\u043a\u043b\u044e\u0447\u0435\u043d\u0430 \u043d\u0435 \u0434\u043e \u043a\u043e\u043d\u0446\u0430"

    :goto_1
    invoke-direct {p0, v0, v8, v3}, Lru/fokus/tetrad/GuideActivity;->status(ZLjava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 225
    invoke-static {p0}, Lru/fokus/tetrad/Ui;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 226
    const-string v0, "\u041a\u0430\u043a \u0432\u043a\u043b\u044e\u0447\u0438\u0442\u044c"

    invoke-static {p0, v0}, Lru/fokus/tetrad/Ui;->title(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 227
    if-eqz v4, :cond_3

    const-string v0, "\u2713"

    :goto_2
    const-string v7, "\u0421\u043f\u0435\u0446. \u0432\u043e\u0437\u043c\u043e\u0436\u043d\u043e\u0441\u0442\u0438: \u043d\u0430\u0439\u0434\u0438 \u00ab\u0424\u043e\u043a\u0443\u0441-\u0442\u0435\u0442\u0440\u0430\u0434\u044c\u00bb \u0438 \u0432\u043a\u043b\u044e\u0447\u0438. \u0415\u0441\u043b\u0438 \u043f\u0435\u0440\u0435\u043a\u043b\u044e\u0447\u0430\u0442\u0435\u043b\u044c \u0441\u0435\u0440\u044b\u0439 \u2014 \u00ab\u0421\u0432\u0435\u0434\u0435\u043d\u0438\u044f \u043e \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u0438\u00bb \u2192 \u22ee \u2192 \u00ab\u0420\u0430\u0437\u0440\u0435\u0448\u0438\u0442\u044c \u043d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0438 \u0441 \u043e\u0433\u0440\u0430\u043d\u0438\u0447\u0435\u043d\u043d\u044b\u043c \u0434\u043e\u0441\u0442\u0443\u043f\u043e\u043c\u00bb."

    invoke-direct {p0, v0, v7}, Lru/fokus/tetrad/GuideActivity;->step(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 228
    if-eqz v5, :cond_4

    const-string v0, "\u2713"

    :goto_3
    const-string v7, "\u0414\u043e\u0441\u0442\u0443\u043f \u043a \u0438\u0441\u0442\u043e\u0440\u0438\u0438 \u0438\u0441\u043f\u043e\u043b\u044c\u0437\u043e\u0432\u0430\u043d\u0438\u044f: \u0440\u0430\u0437\u0440\u0435\u0448\u0438 \u00ab\u0424\u043e\u043a\u0443\u0441-\u0442\u0435\u0442\u0440\u0430\u0434\u0438\u00bb."

    invoke-direct {p0, v0, v7}, Lru/fokus/tetrad/GuideActivity;->step(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 229
    if-eqz v6, :cond_5

    const-string v0, "\u2713"

    :goto_4
    const-string v7, "\u0420\u0430\u0431\u043e\u0442\u0430 \u0432 \u0444\u043e\u043d\u0435 \u0431\u0435\u0437 \u043e\u0433\u0440\u0430\u043d\u0438\u0447\u0435\u043d\u0438\u0439 (\u043d\u0430 Xiaomi \u0435\u0449\u0451 \u00ab\u0410\u0432\u0442\u043e\u0437\u0430\u043f\u0443\u0441\u043a\u00bb)."

    invoke-direct {p0, v0, v7}, Lru/fokus/tetrad/GuideActivity;->step(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 230
    const-string v0, "4"

    const-string v7, "\u0412\u044b\u0431\u0435\u0440\u0438, \u0447\u0442\u043e \u0431\u043b\u043e\u043a\u0438\u0440\u043e\u0432\u0430\u0442\u044c, \u0438 \u0434\u043b\u0438\u0442\u0435\u043b\u044c\u043d\u043e\u0441\u0442\u044c: \u0433\u043b\u0430\u0432\u043d\u044b\u0439 \u044d\u043a\u0440\u0430\u043d \u2192 \u00ab\u041d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0438 \u0437\u0430\u043d\u044f\u0442\u0438\u044f\u00bb. \u0420\u043e\u0434\u0438\u0442\u0435\u043b\u044c \u043c\u043e\u0436\u0435\u0442 \u043f\u043e\u0441\u0442\u0430\u0432\u0438\u0442\u044c PIN."

    invoke-direct {p0, v0, v7}, Lru/fokus/tetrad/GuideActivity;->step(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 231
    const-string v0, "\u041e\u0442\u043a\u0440\u044b\u0442\u044c \u043d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0438 \u0431\u043b\u043e\u043a\u0438\u0440\u043e\u0432\u043a\u0438"

    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    if-eqz v6, :cond_0

    move v2, v1

    :cond_0
    invoke-static {p0, v0, v2, v1}, Lru/fokus/tetrad/Ui;->button(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v0

    .line 232
    new-instance v1, Lru/fokus/tetrad/GuideActivity$9;

    invoke-direct {v1, p0}, Lru/fokus/tetrad/GuideActivity$9;-><init>(Lru/fokus/tetrad/GuideActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    invoke-static {}, Lru/fokus/tetrad/Ui;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 236
    iget-object v0, p0, Lru/fokus/tetrad/GuideActivity;->content:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 237
    const-string v0, "\u0413\u043e\u0442\u043e\u0432\u043e \u2014 \u043d\u0430\u0447\u0430\u0442\u044c"

    invoke-direct {p0, v0}, Lru/fokus/tetrad/GuideActivity;->nav(Ljava/lang/String;)V

    .line 238
    return-void

    :cond_1
    move v0, v2

    .line 224
    goto :goto_0

    :cond_2
    const-string v3, "\u0432\u044b\u043a\u043b\u044e\u0447\u0435\u043d\u0430"

    goto :goto_1

    .line 227
    :cond_3
    const-string v0, "1"

    goto :goto_2

    .line 228
    :cond_4
    const-string v0, "2"

    goto :goto_3

    .line 229
    :cond_5
    const-string v0, "3"

    goto :goto_4
.end method

.method private finishGuide()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 49
    iget-object v0, p0, Lru/fokus/tetrad/GuideActivity;->store:Lru/fokus/tetrad/Store;

    invoke-virtual {v0}, Lru/fokus/tetrad/Store;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "guideDone"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "onboardDone"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 50
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lru/fokus/tetrad/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lru/fokus/tetrad/GuideActivity;->startActivity(Landroid/content/Intent;)V

    .line 51
    invoke-virtual {p0}, Lru/fokus/tetrad/GuideActivity;->finish()V

    .line 52
    return-void
.end method

.method private head(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 83
    if-eqz p1, :cond_0

    iget-object v0, p0, Lru/fokus/tetrad/GuideActivity;->content:Landroid/widget/LinearLayout;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u0428\u0430\u0433 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u0438\u0437 4"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x41500000    # 13.0f

    sget v3, Lru/fokus/tetrad/Ui;->INK:I

    sget-object v4, Lru/fokus/tetrad/Ui;->BOLD:Landroid/graphics/Typeface;

    invoke-static {p0, v1, v2, v3, v4}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 84
    :cond_0
    iget-object v0, p0, Lru/fokus/tetrad/GuideActivity;->content:Landroid/widget/LinearLayout;

    const/high16 v1, 0x41c00000    # 24.0f

    sget v2, Lru/fokus/tetrad/Ui;->FG:I

    sget-object v3, Lru/fokus/tetrad/Ui;->BOLD:Landroid/graphics/Typeface;

    invoke-static {p0, p2, v1, v2, v3}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 85
    if-eqz p3, :cond_1

    iget-object v0, p0, Lru/fokus/tetrad/GuideActivity;->content:Landroid/widget/LinearLayout;

    const/high16 v1, 0x41700000    # 15.0f

    sget v2, Lru/fokus/tetrad/Ui;->MUTED:I

    sget-object v3, Lru/fokus/tetrad/Ui;->BODY:Landroid/graphics/Typeface;

    invoke-static {p0, p3, v1, v2, v3}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 86
    :cond_1
    return-void
.end method

.method private mesh()V
    .locals 7

    .prologue
    const/4 v1, 0x1

    .line 179
    const-string v0, "2"

    const-string v2, "\u041f\u043e\u0434\u043a\u043b\u044e\u0447\u0438 \u041c\u042d\u0428"

    const-string v3, "\u0414\u043b\u044f \u0443\u0447\u0435\u043d\u0438\u043a\u043e\u0432 \u043c\u043e\u0441\u043a\u043e\u0432\u0441\u043a\u0438\u0445 \u0448\u043a\u043e\u043b: \u0434\u043e\u043c\u0430\u0448\u043a\u0430 \u0438 \u043e\u0446\u0435\u043d\u043a\u0438 \u0431\u0443\u0434\u0443\u0442 \u043f\u043e\u0434\u0442\u044f\u0433\u0438\u0432\u0430\u0442\u044c\u0441\u044f \u0441\u0430\u043c\u0438."

    invoke-direct {p0, v0, v2, v3}, Lru/fokus/tetrad/GuideActivity;->head(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    invoke-static {p0}, Lru/fokus/tetrad/Mesh;->loggedIn(Landroid/content/Context;)Z

    move-result v3

    .line 181
    iget-object v0, p0, Lru/fokus/tetrad/GuideActivity;->content:Landroid/widget/LinearLayout;

    const-string v2, "\u0432\u0445\u043e\u0434 \u0432\u044b\u043f\u043e\u043b\u043d\u0435\u043d"

    const-string v4, "\u043d\u0435 \u043f\u043e\u0434\u043a\u043b\u044e\u0447\u0435\u043d\u0430"

    invoke-direct {p0, v3, v2, v4}, Lru/fokus/tetrad/GuideActivity;->status(ZLjava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 182
    invoke-static {p0}, Lru/fokus/tetrad/Ui;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 183
    const-string v0, "\u041a\u0430\u043a \u043f\u043e\u0434\u043a\u043b\u044e\u0447\u0438\u0442\u044c"

    invoke-static {p0, v0}, Lru/fokus/tetrad/Ui;->title(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 184
    const-string v0, "1"

    const-string v2, "\u041d\u0430\u0436\u043c\u0438 \u00ab\u0412\u043e\u0439\u0442\u0438 \u0432 \u041c\u042d\u0428\u00bb \u2014 \u043e\u0442\u043a\u0440\u043e\u0435\u0442\u0441\u044f \u043d\u0430\u0441\u0442\u043e\u044f\u0449\u0438\u0439 \u0441\u0430\u0439\u0442 school.mos.ru."

    invoke-direct {p0, v0, v2}, Lru/fokus/tetrad/GuideActivity;->step(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 185
    const-string v0, "2"

    const-string v2, "\u0412\u043e\u0439\u0434\u0438 \u043a\u0430\u043a \u043e\u0431\u044b\u0447\u043d\u043e: \u0447\u0435\u0440\u0435\u0437 mos.ru \u0438\u043b\u0438 \u0413\u043e\u0441\u0443\u0441\u043b\u0443\u0433\u0438. \u041f\u0430\u0440\u043e\u043b\u044c \u0432\u0432\u043e\u0434\u0438\u0442\u0441\u044f \u043d\u0430 \u0441\u0430\u0439\u0442\u0435, \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u0435 \u0435\u0433\u043e \u043d\u0435 \u0432\u0438\u0434\u0438\u0442."

    invoke-direct {p0, v0, v2}, Lru/fokus/tetrad/GuideActivity;->step(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 186
    const-string v0, "3"

    const-string v2, "\u041f\u043e\u0441\u043b\u0435 \u0432\u0445\u043e\u0434\u0430 \u0442\u0435\u0431\u044f \u0441\u0430\u043c\u043e \u0432\u0435\u0440\u043d\u0451\u0442 \u0441\u044e\u0434\u0430."

    invoke-direct {p0, v0, v2}, Lru/fokus/tetrad/GuideActivity;->step(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 187
    const-string v0, "\u0427\u0442\u043e \u044d\u0442\u043e \u0434\u0430\u0451\u0442: \u043d\u0430 \u0433\u043b\u0430\u0432\u043d\u043e\u043c \u044d\u043a\u0440\u0430\u043d\u0435 \u043a\u043d\u043e\u043f\u043a\u0430 \u00ab\u0418\u0437 \u041c\u042d\u0428\u00bb \u0431\u0435\u0440\u0451\u0442 \u0434\u043e\u043c\u0430\u0448\u043d\u0435\u0435 \u0437\u0430\u0434\u0430\u043d\u0438\u0435, \u0430 \u0440\u0430\u0437\u0434\u0435\u043b \u00ab\u041e\u0446\u0435\u043d\u043a\u0438\u00bb \u043f\u043e\u043a\u0430\u0437\u044b\u0432\u0430\u0435\u0442 \u043e\u0446\u0435\u043d\u043a\u0438 \u0438 \u0440\u0430\u0437\u0431\u043e\u0440 \u043f\u043e \u043f\u0440\u0435\u0434\u043c\u0435\u0442\u0430\u043c."

    const/high16 v2, 0x41600000    # 14.0f

    sget v5, Lru/fokus/tetrad/Ui;->MUTED:I

    sget-object v6, Lru/fokus/tetrad/Ui;->BODY:Landroid/graphics/Typeface;

    invoke-static {p0, v0, v2, v5, v6}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 188
    if-eqz v3, :cond_0

    const-string v0, "\u0412\u043e\u0439\u0442\u0438 \u0437\u0430\u043d\u043e\u0432\u043e"

    move-object v2, v0

    :goto_0
    if-eqz v3, :cond_1

    move v0, v1

    :goto_1
    invoke-static {p0, v2, v0, v1}, Lru/fokus/tetrad/Ui;->button(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v0

    .line 189
    new-instance v1, Lru/fokus/tetrad/GuideActivity$7;

    invoke-direct {v1, p0}, Lru/fokus/tetrad/GuideActivity$7;-><init>(Lru/fokus/tetrad/GuideActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    invoke-static {}, Lru/fokus/tetrad/Ui;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 193
    iget-object v0, p0, Lru/fokus/tetrad/GuideActivity;->content:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 194
    if-eqz v3, :cond_2

    const-string v0, "\u0414\u0430\u043b\u044c\u0448\u0435"

    :goto_2
    invoke-direct {p0, v0}, Lru/fokus/tetrad/GuideActivity;->nav(Ljava/lang/String;)V

    .line 195
    return-void

    .line 188
    :cond_0
    const-string v0, "\u0412\u043e\u0439\u0442\u0438 \u0432 \u041c\u042d\u0428"

    move-object v2, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 194
    :cond_2
    const-string v0, "\u041f\u0440\u043e\u043f\u0443\u0441\u0442\u0438\u0442\u044c"

    goto :goto_2
.end method

.method private nav(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 104
    const/16 v0, 0xa

    invoke-static {p0, v0}, Lru/fokus/tetrad/Ui;->row(Landroid/content/Context;I)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 105
    iget v1, p0, Lru/fokus/tetrad/GuideActivity;->step:I

    if-lez v1, :cond_0

    .line 106
    const-string v1, "\u041d\u0430\u0437\u0430\u0434"

    const/4 v2, 0x1

    invoke-static {p0, v1, v2, v3}, Lru/fokus/tetrad/Ui;->button(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v1

    .line 107
    new-instance v2, Lru/fokus/tetrad/GuideActivity$2;

    invoke-direct {v2, p0}, Lru/fokus/tetrad/GuideActivity$2;-><init>(Lru/fokus/tetrad/GuideActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2}, Lru/fokus/tetrad/Ui;->weight(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 110
    :cond_0
    invoke-static {p0, p1, v3, v3}, Lru/fokus/tetrad/Ui;->button(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v1

    .line 111
    new-instance v2, Lru/fokus/tetrad/GuideActivity$3;

    invoke-direct {v2, p0}, Lru/fokus/tetrad/GuideActivity$3;-><init>(Lru/fokus/tetrad/GuideActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v2}, Lru/fokus/tetrad/Ui;->weight(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 113
    iget-object v1, p0, Lru/fokus/tetrad/GuideActivity;->content:Landroid/widget/LinearLayout;

    invoke-static {}, Lru/fokus/tetrad/Ui;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 114
    return-void
.end method

.method private next()V
    .locals 2

    .prologue
    .line 54
    iget v0, p0, Lru/fokus/tetrad/GuideActivity;->step:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    iget v0, p0, Lru/fokus/tetrad/GuideActivity;->step:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lru/fokus/tetrad/GuideActivity;->step:I

    const-string v0, ""

    iput-object v0, p0, Lru/fokus/tetrad/GuideActivity;->testMsg:Ljava/lang/String;

    invoke-direct {p0}, Lru/fokus/tetrad/GuideActivity;->render()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lru/fokus/tetrad/GuideActivity;->finishGuide()V

    goto :goto_0
.end method

.method private render()V
    .locals 8

    .prologue
    const/high16 v1, 0x41000000    # 8.0f

    const/4 v3, 0x0

    .line 59
    iget-object v0, p0, Lru/fokus/tetrad/GuideActivity;->content:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 60
    const/4 v0, 0x6

    invoke-static {p0, v0}, Lru/fokus/tetrad/Ui;->row(Landroid/content/Context;I)Landroid/widget/LinearLayout;

    move-result-object v4

    move v2, v3

    .line 61
    :goto_0
    const/4 v0, 0x5

    if-ge v2, v0, :cond_2

    .line 62
    new-instance v5, Landroid/view/View;

    invoke-direct {v5, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 63
    iget v0, p0, Lru/fokus/tetrad/GuideActivity;->step:I

    if-gt v2, v0, :cond_0

    sget v0, Lru/fokus/tetrad/Ui;->INK:I

    :goto_1
    const v6, 0x4479c000    # 999.0f

    const/4 v7, 0x0

    invoke-static {v0, v6, v3, v7}, Lru/fokus/tetrad/Ui;->round(IFIF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 64
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    iget v0, p0, Lru/fokus/tetrad/GuideActivity;->step:I

    if-ne v2, v0, :cond_1

    const/high16 v0, 0x41b00000    # 22.0f

    :goto_2
    invoke-static {v0}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v0

    invoke-static {v1}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v7

    invoke-direct {v6, v0, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 63
    :cond_0
    sget v0, Lru/fokus/tetrad/Ui;->LINE:I

    goto :goto_1

    :cond_1
    move v0, v1

    .line 64
    goto :goto_2

    .line 66
    :cond_2
    const/16 v0, 0x8

    invoke-static {p0, v0}, Lru/fokus/tetrad/Ui;->row(Landroid/content/Context;I)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 67
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Lru/fokus/tetrad/Ui;->weight(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 68
    const-string v1, "\u041f\u0440\u043e\u043f\u0443\u0441\u0442\u0438\u0442\u044c \u0432\u0441\u0451"

    const/4 v2, 0x3

    invoke-static {p0, v1, v2, v3}, Lru/fokus/tetrad/Ui;->button(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v1

    .line 69
    new-instance v2, Lru/fokus/tetrad/GuideActivity$1;

    invoke-direct {v2, p0}, Lru/fokus/tetrad/GuideActivity$1;-><init>(Lru/fokus/tetrad/GuideActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 71
    iget-object v1, p0, Lru/fokus/tetrad/GuideActivity;->content:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 73
    iget v0, p0, Lru/fokus/tetrad/GuideActivity;->step:I

    packed-switch v0, :pswitch_data_0

    .line 78
    invoke-direct {p0}, Lru/fokus/tetrad/GuideActivity;->blocking()V

    .line 80
    :goto_3
    return-void

    .line 74
    :pswitch_0
    invoke-direct {p0}, Lru/fokus/tetrad/GuideActivity;->welcome()V

    goto :goto_3

    .line 75
    :pswitch_1
    invoke-direct {p0}, Lru/fokus/tetrad/GuideActivity;->ai()V

    goto :goto_3

    .line 76
    :pswitch_2
    invoke-direct {p0}, Lru/fokus/tetrad/GuideActivity;->mesh()V

    goto :goto_3

    .line 77
    :pswitch_3
    invoke-direct {p0}, Lru/fokus/tetrad/GuideActivity;->schedule()V

    goto :goto_3

    .line 73
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private schedule()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 200
    const-string v0, "3"

    const-string v3, "\u0414\u043e\u0431\u0430\u0432\u044c \u0440\u0430\u0441\u043f\u0438\u0441\u0430\u043d\u0438\u0435"

    const-string v4, "\u041f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u0435 \u0431\u0443\u0434\u0435\u0442 \u043f\u043e\u043a\u0430\u0437\u044b\u0432\u0430\u0442\u044c \u0442\u0435\u043a\u0443\u0449\u0438\u0439 \u0443\u0440\u043e\u043a, \u043d\u0430\u043f\u043e\u043c\u0438\u043d\u0430\u0442\u044c \u043e \u0443\u0440\u043e\u043a\u0430\u0445 \u0438 \u0441\u043e\u0441\u0442\u0430\u0432\u043b\u044f\u0442\u044c \u043f\u043b\u0430\u043d \u0434\u043e\u043c\u0430\u0448\u043a\u0438."

    invoke-direct {p0, v0, v3, v4}, Lru/fokus/tetrad/GuideActivity;->head(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    invoke-static {p0}, Lru/fokus/tetrad/LessonReminders;->week(Landroid/content/Context;)Lru/fokus/tetrad/Schedule$Week;

    move-result-object v0

    invoke-virtual {v0}, Lru/fokus/tetrad/Schedule$Week;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 202
    :goto_0
    iget-object v3, p0, Lru/fokus/tetrad/GuideActivity;->content:Landroid/widget/LinearLayout;

    const-string v4, "\u0440\u0430\u0441\u043f\u0438\u0441\u0430\u043d\u0438\u0435 \u0434\u043e\u0431\u0430\u0432\u043b\u0435\u043d\u043e"

    const-string v5, "\u0435\u0449\u0451 \u043d\u0435 \u0434\u043e\u0431\u0430\u0432\u043b\u0435\u043d\u043e"

    invoke-direct {p0, v0, v4, v5}, Lru/fokus/tetrad/GuideActivity;->status(ZLjava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 203
    invoke-static {p0}, Lru/fokus/tetrad/Ui;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 204
    const-string v3, "\u041a\u0430\u043a \u0434\u043e\u0431\u0430\u0432\u0438\u0442\u044c"

    invoke-static {p0, v3}, Lru/fokus/tetrad/Ui;->title(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 205
    const-string v3, "1"

    const-string v5, "\u0421\u0434\u0435\u043b\u0430\u0439 \u0441\u043a\u0440\u0438\u043d\u0448\u043e\u0442\u044b \u0438\u043b\u0438 \u0444\u043e\u0442\u043e \u0440\u0430\u0441\u043f\u0438\u0441\u0430\u043d\u0438\u044f \u043d\u0430 \u0432\u0441\u044e \u043d\u0435\u0434\u0435\u043b\u044e \u2014 \u043c\u043e\u0436\u043d\u043e \u043d\u0435\u0441\u043a\u043e\u043b\u044c\u043a\u043e \u0448\u0442\u0443\u043a."

    invoke-direct {p0, v3, v5}, Lru/fokus/tetrad/GuideActivity;->step(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 206
    const-string v3, "2"

    const-string v5, "\u041d\u0430\u0436\u043c\u0438 \u00ab\u0414\u043e\u0431\u0430\u0432\u0438\u0442\u044c \u0440\u0430\u0441\u043f\u0438\u0441\u0430\u043d\u0438\u0435\u00bb \u2192 \u00ab\u0412\u044b\u0431\u0440\u0430\u0442\u044c \u0444\u043e\u0442\u043e \u0438\u0437 \u0433\u0430\u043b\u0435\u0440\u0435\u0438\u00bb \u0438 \u043e\u0442\u043c\u0435\u0442\u044c \u0432\u0441\u0435 \u0444\u043e\u0442\u043e \u0441\u0440\u0430\u0437\u0443."

    invoke-direct {p0, v3, v5}, Lru/fokus/tetrad/GuideActivity;->step(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 207
    const-string v3, "3"

    const-string v5, "\u041d\u0430\u0436\u043c\u0438 \u00ab\u0420\u0430\u0441\u043f\u043e\u0437\u043d\u0430\u0442\u044c \u043d\u0435\u0434\u0435\u043b\u044e\u00bb. \u0418\u0418 \u0441\u0430\u043c \u0440\u0430\u0437\u043b\u043e\u0436\u0438\u0442 \u0443\u0440\u043e\u043a\u0438 \u043f\u043e \u0434\u043d\u044f\u043c (\u043d\u0443\u0436\u0435\u043d \u043f\u043e\u0434\u043a\u043b\u044e\u0447\u0451\u043d\u043d\u044b\u0439 \u0418\u0418)."

    invoke-direct {p0, v3, v5}, Lru/fokus/tetrad/GuideActivity;->step(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 208
    const-string v3, "4"

    const-string v5, "\u0415\u0441\u043b\u0438 \u0443\u0440\u043e\u043a\u0438 \u0440\u0430\u0437\u0434\u0435\u043b\u0435\u043d\u044b \u043f\u043e \u0433\u0440\u0443\u043f\u043f\u0430\u043c (\u041c1, \u04182\u2026) \u2014 \u0432\u044b\u0431\u0435\u0440\u0438 \u0441\u0432\u043e\u0438 \u0433\u0440\u0443\u043f\u043f\u044b \u0432 \u043f\u043e\u044f\u0432\u0438\u0432\u0448\u0435\u043c\u0441\u044f \u043e\u043a\u043d\u0435."

    invoke-direct {p0, v3, v5}, Lru/fokus/tetrad/GuideActivity;->step(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 209
    const-string v3, "5"

    const-string v5, "\u0412\u043a\u043b\u044e\u0447\u0438 \u043d\u0430\u043f\u043e\u043c\u0438\u043d\u0430\u043d\u0438\u044f: \u0443\u0442\u0440\u043e\u043c \u2014 \u0441\u043f\u0438\u0441\u043e\u043a \u0443\u0440\u043e\u043a\u043e\u0432, \u043f\u0435\u0440\u0435\u0434 \u0443\u0440\u043e\u043a\u043e\u043c \u2014 \u0437\u0430 \u043d\u0435\u0441\u043a\u043e\u043b\u044c\u043a\u043e \u043c\u0438\u043d\u0443\u0442."

    invoke-direct {p0, v3, v5}, Lru/fokus/tetrad/GuideActivity;->step(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 210
    if-eqz v0, :cond_2

    const-string v3, "\u041e\u0442\u043a\u0440\u044b\u0442\u044c \u0440\u0430\u0441\u043f\u0438\u0441\u0430\u043d\u0438\u0435"

    :goto_1
    if-eqz v0, :cond_0

    move v2, v1

    :cond_0
    invoke-static {p0, v3, v2, v1}, Lru/fokus/tetrad/Ui;->button(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v1

    .line 211
    new-instance v2, Lru/fokus/tetrad/GuideActivity$8;

    invoke-direct {v2, p0}, Lru/fokus/tetrad/GuideActivity$8;-><init>(Lru/fokus/tetrad/GuideActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    invoke-static {}, Lru/fokus/tetrad/Ui;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 215
    iget-object v1, p0, Lru/fokus/tetrad/GuideActivity;->content:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 216
    if-eqz v0, :cond_3

    const-string v0, "\u0414\u0430\u043b\u044c\u0448\u0435"

    :goto_2
    invoke-direct {p0, v0}, Lru/fokus/tetrad/GuideActivity;->nav(Ljava/lang/String;)V

    .line 217
    return-void

    :cond_1
    move v0, v2

    .line 201
    goto :goto_0

    .line 210
    :cond_2
    const-string v3, "\u0414\u043e\u0431\u0430\u0432\u0438\u0442\u044c \u0440\u0430\u0441\u043f\u0438\u0441\u0430\u043d\u0438\u0435"

    goto :goto_1

    .line 216
    :cond_3
    const-string v0, "\u041f\u0440\u043e\u043f\u0443\u0441\u0442\u0438\u0442\u044c"

    goto :goto_2
.end method

.method private status(ZLjava/lang/String;Ljava/lang/String;)Landroid/view/View;
    .locals 3

    .prologue
    .line 100
    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u2713 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v1, Lru/fokus/tetrad/Ui;->OK:I

    sget v2, Lru/fokus/tetrad/Ui;->OK_SOFT:I

    invoke-static {p0, v0, v1, v2}, Lru/fokus/tetrad/Ui;->pill(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget v0, Lru/fokus/tetrad/Ui;->MUTED:I

    sget v1, Lru/fokus/tetrad/Ui;->CARD:I

    invoke-static {p0, p3, v0, v1}, Lru/fokus/tetrad/Ui;->pill(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v0

    goto :goto_0
.end method

.method private step(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;
    .locals 7

    .prologue
    const/high16 v6, 0x41c00000    # 24.0f

    .line 89
    const/16 v0, 0xa

    invoke-static {p0, v0}, Lru/fokus/tetrad/Ui;->row(Landroid/content/Context;I)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 90
    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 91
    const/high16 v1, 0x41500000    # 13.0f

    sget v2, Lru/fokus/tetrad/Ui;->INK:I

    sget-object v3, Lru/fokus/tetrad/Ui;->BOLD:Landroid/graphics/Typeface;

    invoke-static {p0, p1, v1, v2, v3}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v1

    .line 92
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 93
    sget v2, Lru/fokus/tetrad/Ui;->INK_SOFT:I

    const v3, 0x4479c000    # 999.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Lru/fokus/tetrad/Ui;->round(IFIF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 94
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {v6}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v3

    invoke-static {v6}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 95
    const/high16 v1, 0x41700000    # 15.0f

    sget v2, Lru/fokus/tetrad/Ui;->FG:I

    sget-object v3, Lru/fokus/tetrad/Ui;->BODY:Landroid/graphics/Typeface;

    invoke-static {p0, p2, v1, v2, v3}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2}, Lru/fokus/tetrad/Ui;->weight(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 96
    return-object v0
.end method

.method private testAi()V
    .locals 2

    .prologue
    .line 160
    const/4 v0, 0x1

    iput-boolean v0, p0, Lru/fokus/tetrad/GuideActivity;->testing:Z

    .line 161
    const-string v0, ""

    iput-object v0, p0, Lru/fokus/tetrad/GuideActivity;->testMsg:Ljava/lang/String;

    .line 162
    invoke-direct {p0}, Lru/fokus/tetrad/GuideActivity;->render()V

    .line 163
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lru/fokus/tetrad/GuideActivity$6;

    invoke-direct {v1, p0}, Lru/fokus/tetrad/GuideActivity$6;-><init>(Lru/fokus/tetrad/GuideActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 173
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 174
    return-void
.end method

.method private welcome()V
    .locals 5

    .prologue
    .line 117
    iget-object v0, p0, Lru/fokus/tetrad/GuideActivity;->content:Landroid/widget/LinearLayout;

    const-string v1, "\u0424\u043e\u043a\u0443\u0441-\u0442\u0435\u0442\u0440\u0430\u0434\u044c"

    const/high16 v2, 0x41e00000    # 28.0f

    sget v3, Lru/fokus/tetrad/Ui;->FG:I

    sget-object v4, Lru/fokus/tetrad/Ui;->DISPLAY:Landroid/graphics/Typeface;

    invoke-static {p0, v1, v2, v3, v4}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 118
    iget-object v0, p0, Lru/fokus/tetrad/GuideActivity;->content:Landroid/widget/LinearLayout;

    const-string v1, "\u041f\u043e\u043c\u043e\u0433\u0430\u0435\u0442 \u0434\u0435\u043b\u0430\u0442\u044c \u0434\u043e\u043c\u0430\u0448\u043a\u0443 \u0431\u0435\u0437 \u043e\u0442\u0432\u043b\u0435\u0447\u0435\u043d\u0438\u0439 \u0438 \u0441\u0440\u0430\u0437\u0443 \u043f\u0440\u043e\u0432\u0435\u0440\u044f\u0442\u044c \u0440\u0435\u0448\u0435\u043d\u0438\u0435."

    const/high16 v2, 0x41880000    # 17.0f

    sget v3, Lru/fokus/tetrad/Ui;->MUTED:I

    sget-object v4, Lru/fokus/tetrad/Ui;->BODY:Landroid/graphics/Typeface;

    invoke-static {p0, v1, v2, v3, v4}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 119
    invoke-static {p0}, Lru/fokus/tetrad/Ui;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 120
    const-string v1, "\u0427\u0442\u043e \u0443\u043c\u0435\u0435\u0442"

    invoke-static {p0, v1}, Lru/fokus/tetrad/Ui;->title(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 121
    const-string v1, "\u23f1"

    const-string v2, "\u0417\u0430\u043d\u044f\u0442\u0438\u0435 \u0441 \u0442\u0430\u0439\u043c\u0435\u0440\u043e\u043c: \u043e\u0442\u0432\u043b\u0435\u043a\u0430\u044e\u0449\u0438\u0435 \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u044f \u043d\u0430 \u044d\u0442\u043e \u0432\u0440\u0435\u043c\u044f \u0431\u043b\u043e\u043a\u0438\u0440\u0443\u044e\u0442\u0441\u044f."

    invoke-direct {p0, v1, v2}, Lru/fokus/tetrad/GuideActivity;->step(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 122
    const-string v1, "\u2713"

    const-string v2, "\u0418\u0418-\u0443\u0447\u0438\u0442\u0435\u043b\u044c \u043f\u0440\u043e\u0432\u0435\u0440\u044f\u0435\u0442 \u0440\u0435\u0448\u0435\u043d\u0438\u0435 \u043f\u043e \u0444\u043e\u0442\u043e, \u043e\u0431\u044a\u044f\u0441\u043d\u044f\u0435\u0442 \u043e\u0448\u0438\u0431\u043a\u0438, \u0443\u0441\u0442\u043d\u044b\u0435 \u0437\u0430\u0434\u0430\u043d\u0438\u044f \u2014 \u0431\u043b\u0438\u0446-\u043e\u043f\u0440\u043e\u0441\u043e\u043c."

    invoke-direct {p0, v1, v2}, Lru/fokus/tetrad/GuideActivity;->step(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 123
    const-string v1, "\ud83d\udcd8"

    const-string v2, "\u0414\u043e\u043c\u0430\u0448\u043a\u0430 \u0438 \u043e\u0446\u0435\u043d\u043a\u0438 \u0438\u0437 \u041c\u042d\u0428, \u0440\u0430\u0437\u0431\u043e\u0440, \u043a\u0430\u043a\u0438\u0435 \u043f\u0440\u0435\u0434\u043c\u0435\u0442\u044b \u043f\u043e\u0434\u0442\u044f\u043d\u0443\u0442\u044c."

    invoke-direct {p0, v1, v2}, Lru/fokus/tetrad/GuideActivity;->step(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 124
    const-string v1, "\ud83d\uddd3"

    const-string v2, "\u0420\u0430\u0441\u043f\u0438\u0441\u0430\u043d\u0438\u0435 \u043f\u043e \u0444\u043e\u0442\u043e \u0441 \u043d\u0430\u043f\u043e\u043c\u0438\u043d\u0430\u043d\u0438\u044f\u043c\u0438 \u043e \u0443\u0440\u043e\u043a\u0430\u0445."

    invoke-direct {p0, v1, v2}, Lru/fokus/tetrad/GuideActivity;->step(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 125
    iget-object v1, p0, Lru/fokus/tetrad/GuideActivity;->content:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 126
    iget-object v0, p0, Lru/fokus/tetrad/GuideActivity;->content:Landroid/widget/LinearLayout;

    const-string v1, "\u0414\u0430\u043b\u044c\u0448\u0435 \u2014 4 \u043a\u043e\u0440\u043e\u0442\u043a\u0438\u0445 \u0448\u0430\u0433\u0430 \u043d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0438. \u041b\u044e\u0431\u043e\u0439 \u043c\u043e\u0436\u043d\u043e \u043f\u0440\u043e\u043f\u0443\u0441\u0442\u0438\u0442\u044c \u0438 \u0432\u0435\u0440\u043d\u0443\u0442\u044c\u0441\u044f \u043a \u043d\u0435\u043c\u0443 \u043f\u043e\u0437\u0436\u0435: \u2699 \u041d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0438 \u2192 \u00ab\u0418\u043d\u0441\u0442\u0440\u0443\u043a\u0446\u0438\u044f\u00bb."

    const/high16 v2, 0x41600000    # 14.0f

    sget v3, Lru/fokus/tetrad/Ui;->MUTED:I

    sget-object v4, Lru/fokus/tetrad/Ui;->BODY:Landroid/graphics/Typeface;

    invoke-static {p0, v1, v2, v3, v4}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 127
    const-string v0, "\u041d\u0430\u0447\u0430\u0442\u044c \u043d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0443"

    invoke-direct {p0, v0}, Lru/fokus/tetrad/GuideActivity;->nav(Ljava/lang/String;)V

    .line 128
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lru/fokus/tetrad/GuideActivity;->step:I

    if-lez v0, :cond_0

    iget v0, p0, Lru/fokus/tetrad/GuideActivity;->step:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lru/fokus/tetrad/GuideActivity;->step:I

    invoke-direct {p0}, Lru/fokus/tetrad/GuideActivity;->render()V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/high16 v5, 0x41d00000    # 26.0f

    const/high16 v4, 0x41b00000    # 22.0f

    .line 28
    invoke-static {p0, v2}, Lru/fokus/tetrad/Ui;->applyTheme(Landroid/app/Activity;Z)V

    .line 29
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    sget v0, Lru/fokus/tetrad/Ui;->BG:I

    sget-boolean v1, Lru/fokus/tetrad/Ui;->night:Z

    invoke-static {p0, v0, v1}, Lru/fokus/tetrad/Ui;->paintBars(Landroid/app/Activity;IZ)V

    .line 31
    new-instance v0, Lru/fokus/tetrad/Store;

    invoke-direct {v0, p0}, Lru/fokus/tetrad/Store;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lru/fokus/tetrad/GuideActivity;->store:Lru/fokus/tetrad/Store;

    .line 32
    if-eqz p1, :cond_0

    const-string v0, "step"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lru/fokus/tetrad/GuideActivity;->step:I

    .line 33
    :cond_0
    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 34
    sget v1, Lru/fokus/tetrad/Ui;->BG:I

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setBackgroundColor(I)V

    .line 35
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 36
    const/16 v1, 0x10

    invoke-static {p0, v1}, Lru/fokus/tetrad/Ui;->col(Landroid/content/Context;I)Landroid/widget/LinearLayout;

    move-result-object v1

    iput-object v1, p0, Lru/fokus/tetrad/GuideActivity;->content:Landroid/widget/LinearLayout;

    .line 37
    iget-object v1, p0, Lru/fokus/tetrad/GuideActivity;->content:Landroid/widget/LinearLayout;

    invoke-static {v4}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v2

    invoke-static {v5}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v3

    invoke-static {v4}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v4

    invoke-static {v5}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 38
    iget-object v1, p0, Lru/fokus/tetrad/GuideActivity;->content:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 39
    invoke-virtual {p0, v0}, Lru/fokus/tetrad/GuideActivity;->setContentView(Landroid/view/View;)V

    .line 40
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 44
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-direct {p0}, Lru/fokus/tetrad/GuideActivity;->render()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "step"

    iget v1, p0, Lru/fokus/tetrad/GuideActivity;->step:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method
