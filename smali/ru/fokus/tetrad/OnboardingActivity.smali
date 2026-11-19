.class public Lru/fokus/tetrad/OnboardingActivity;
.super Landroid/app/Activity;
.source "OnboardingActivity.java"


# static fields
.field public static final EXTRA_FROM_GUIDE:Ljava/lang/String; = "fromGuide"

.field private static final KEY:Ljava/util/regex/Pattern;


# instance fields
.field private clipOffered:Z

.field private content:Landroid/widget/LinearLayout;

.field private keyField:Landroid/widget/EditText;

.field private status:Ljava/lang/String;

.field private statusOk:Z

.field private step:I

.field private store:Lru/fokus/tetrad/Store;

.field private testing:Z

.field private zaiMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-string v0, "^[A-Za-z0-9+/=_.-]{30,}$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lru/fokus/tetrad/OnboardingActivity;->KEY:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 31
    iput v1, p0, Lru/fokus/tetrad/OnboardingActivity;->step:I

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lru/fokus/tetrad/OnboardingActivity;->status:Ljava/lang/String;

    .line 34
    iput-boolean v1, p0, Lru/fokus/tetrad/OnboardingActivity;->statusOk:Z

    iput-boolean v1, p0, Lru/fokus/tetrad/OnboardingActivity;->testing:Z

    iput-boolean v1, p0, Lru/fokus/tetrad/OnboardingActivity;->clipOffered:Z

    iput-boolean v1, p0, Lru/fokus/tetrad/OnboardingActivity;->zaiMode:Z

    return-void
.end method

.method static synthetic access$000(Lru/fokus/tetrad/OnboardingActivity;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lru/fokus/tetrad/OnboardingActivity;->offerClipboard()V

    return-void
.end method

.method static synthetic access$100(Lru/fokus/tetrad/OnboardingActivity;)Z
    .locals 1

    .prologue
    .line 26
    iget-boolean v0, p0, Lru/fokus/tetrad/OnboardingActivity;->zaiMode:Z

    return v0
.end method

.method static synthetic access$1000(Lru/fokus/tetrad/OnboardingActivity;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lru/fokus/tetrad/OnboardingActivity;->testKey()V

    return-void
.end method

.method static synthetic access$102(Lru/fokus/tetrad/OnboardingActivity;Z)Z
    .locals 0

    .prologue
    .line 26
    iput-boolean p1, p0, Lru/fokus/tetrad/OnboardingActivity;->zaiMode:Z

    return p1
.end method

.method static synthetic access$1100(Lru/fokus/tetrad/OnboardingActivity;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lru/fokus/tetrad/OnboardingActivity;->finishOnboarding()V

    return-void
.end method

.method static synthetic access$1200(Lru/fokus/tetrad/OnboardingActivity;)Lru/fokus/tetrad/Store;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lru/fokus/tetrad/OnboardingActivity;->store:Lru/fokus/tetrad/Store;

    return-object v0
.end method

.method static synthetic access$1302(Lru/fokus/tetrad/OnboardingActivity;Z)Z
    .locals 0

    .prologue
    .line 26
    iput-boolean p1, p0, Lru/fokus/tetrad/OnboardingActivity;->testing:Z

    return p1
.end method

.method static synthetic access$1400(Lru/fokus/tetrad/OnboardingActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lru/fokus/tetrad/OnboardingActivity;->content:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$202(Lru/fokus/tetrad/OnboardingActivity;I)I
    .locals 0

    .prologue
    .line 26
    iput p1, p0, Lru/fokus/tetrad/OnboardingActivity;->step:I

    return p1
.end method

.method static synthetic access$302(Lru/fokus/tetrad/OnboardingActivity;Z)Z
    .locals 0

    .prologue
    .line 26
    iput-boolean p1, p0, Lru/fokus/tetrad/OnboardingActivity;->clipOffered:Z

    return p1
.end method

.method static synthetic access$400(Lru/fokus/tetrad/OnboardingActivity;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lru/fokus/tetrad/OnboardingActivity;->render()V

    return-void
.end method

.method static synthetic access$500(Lru/fokus/tetrad/OnboardingActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lru/fokus/tetrad/OnboardingActivity;->cabinetUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lru/fokus/tetrad/OnboardingActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lru/fokus/tetrad/OnboardingActivity;->clipboardKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lru/fokus/tetrad/OnboardingActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lru/fokus/tetrad/OnboardingActivity;->keyField:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$802(Lru/fokus/tetrad/OnboardingActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lru/fokus/tetrad/OnboardingActivity;->status:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$902(Lru/fokus/tetrad/OnboardingActivity;Z)Z
    .locals 0

    .prologue
    .line 26
    iput-boolean p1, p0, Lru/fokus/tetrad/OnboardingActivity;->statusOk:Z

    return p1
.end method

.method private cabinetUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lru/fokus/tetrad/OnboardingActivity;->zaiMode:Z

    if-eqz v0, :cond_0

    const-string v0, "https://z.ai/manage-apikey/apikey-list"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "https://developers.sber.ru/studio"

    goto :goto_0
.end method

.method private clipboardKey()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 73
    :try_start_0
    const-string v0, "clipboard"

    invoke-virtual {p0, v0}, Lru/fokus/tetrad/OnboardingActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 74
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v1

    if-nez v1, :cond_1

    .line 82
    :cond_0
    :goto_0
    return-object v6

    .line 75
    :cond_1
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    .line 76
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 78
    if-eqz v0, :cond_0

    .line 79
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\s+"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 80
    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "Basic"

    const/4 v4, 0x0

    const/4 v5, 0x5

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 81
    :cond_2
    sget-object v1, Lru/fokus/tetrad/OnboardingActivity;->KEY:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_3

    :goto_1
    move-object v6, v0

    goto :goto_0

    :cond_3
    move-object v0, v6

    goto :goto_1

    .line 82
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private finishOnboarding()V
    .locals 3

    .prologue
    .line 65
    iget-object v0, p0, Lru/fokus/tetrad/OnboardingActivity;->store:Lru/fokus/tetrad/Store;

    invoke-virtual {v0}, Lru/fokus/tetrad/Store;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "onboardDone"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 66
    invoke-virtual {p0}, Lru/fokus/tetrad/OnboardingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "fromGuide"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lru/fokus/tetrad/OnboardingActivity;->finish()V

    .line 69
    :goto_0
    return-void

    .line 67
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lru/fokus/tetrad/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lru/fokus/tetrad/OnboardingActivity;->startActivity(Landroid/content/Intent;)V

    .line 68
    invoke-virtual {p0}, Lru/fokus/tetrad/OnboardingActivity;->finish()V

    goto :goto_0
.end method

.method private offerClipboard()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 86
    iget-object v0, p0, Lru/fokus/tetrad/OnboardingActivity;->keyField:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/fokus/tetrad/OnboardingActivity;->keyField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    invoke-direct {p0}, Lru/fokus/tetrad/OnboardingActivity;->clipboardKey()Ljava/lang/String;

    move-result-object v0

    .line 88
    if-eqz v0, :cond_0

    .line 89
    iput-boolean v2, p0, Lru/fokus/tetrad/OnboardingActivity;->clipOffered:Z

    .line 90
    iget-object v1, p0, Lru/fokus/tetrad/OnboardingActivity;->keyField:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 91
    const-string v0, "\u041d\u0430\u0448\u0451\u043b \u043a\u043b\u044e\u0447 \u0432 \u0431\u0443\u0444\u0435\u0440\u0435 \u043e\u0431\u043c\u0435\u043d\u0430 \u0438 \u0432\u0441\u0442\u0430\u0432\u0438\u043b. \u041d\u0430\u0436\u043c\u0438 \u00ab\u041f\u0440\u043e\u0432\u0435\u0440\u0438\u0442\u044c\u00bb."

    iput-object v0, p0, Lru/fokus/tetrad/OnboardingActivity;->status:Ljava/lang/String;

    .line 92
    iput-boolean v2, p0, Lru/fokus/tetrad/OnboardingActivity;->statusOk:Z

    .line 93
    invoke-direct {p0}, Lru/fokus/tetrad/OnboardingActivity;->render()V

    goto :goto_0
.end method

.method private render()V
    .locals 11

    .prologue
    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v1, 0x41b00000    # 22.0f

    const/high16 v9, 0x41600000    # 14.0f

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 97
    iget-object v0, p0, Lru/fokus/tetrad/OnboardingActivity;->content:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 98
    const/4 v0, 0x6

    invoke-static {p0, v0}, Lru/fokus/tetrad/Ui;->row(Landroid/content/Context;I)Landroid/widget/LinearLayout;

    move-result-object v5

    move v4, v3

    .line 99
    :goto_0
    const/4 v0, 0x2

    if-ge v4, v0, :cond_2

    .line 100
    new-instance v6, Landroid/view/View;

    invoke-direct {v6, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 101
    iget v0, p0, Lru/fokus/tetrad/OnboardingActivity;->step:I

    if-gt v4, v0, :cond_0

    sget v0, Lru/fokus/tetrad/Ui;->INK:I

    :goto_1
    const v7, 0x4479c000    # 999.0f

    const/4 v8, 0x0

    invoke-static {v0, v7, v3, v8}, Lru/fokus/tetrad/Ui;->round(IFIF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 102
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    iget v0, p0, Lru/fokus/tetrad/OnboardingActivity;->step:I

    if-ne v4, v0, :cond_1

    move v0, v1

    :goto_2
    invoke-static {v0}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v0

    const/high16 v8, 0x41000000    # 8.0f

    invoke-static {v8}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v8

    invoke-direct {v7, v0, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 99
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    .line 101
    :cond_0
    sget v0, Lru/fokus/tetrad/Ui;->LINE:I

    goto :goto_1

    .line 102
    :cond_1
    const/high16 v0, 0x41000000    # 8.0f

    goto :goto_2

    .line 104
    :cond_2
    iget-object v0, p0, Lru/fokus/tetrad/OnboardingActivity;->content:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 106
    iget v0, p0, Lru/fokus/tetrad/OnboardingActivity;->step:I

    if-nez v0, :cond_3

    .line 107
    iget-object v0, p0, Lru/fokus/tetrad/OnboardingActivity;->content:Landroid/widget/LinearLayout;

    const-string v1, "\u0424\u043e\u043a\u0443\u0441-\u0442\u0435\u0442\u0440\u0430\u0434\u044c"

    const/high16 v4, 0x41d00000    # 26.0f

    sget v5, Lru/fokus/tetrad/Ui;->FG:I

    sget-object v6, Lru/fokus/tetrad/Ui;->DISPLAY:Landroid/graphics/Typeface;

    invoke-static {p0, v1, v4, v5, v6}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 108
    iget-object v0, p0, Lru/fokus/tetrad/OnboardingActivity;->content:Landroid/widget/LinearLayout;

    const-string v1, "\u0414\u043e\u043c\u0430\u0448\u043a\u0430 \u0431\u0435\u0437 \u043e\u0442\u0432\u043b\u0435\u0447\u0435\u043d\u0438\u0439 \u0438 \u043f\u0440\u043e\u0432\u0435\u0440\u043a\u0430 \u0440\u0435\u0448\u0435\u043d\u0438\u044f \u0418\u0418-\u0443\u0447\u0438\u0442\u0435\u043b\u0435\u043c."

    const/high16 v4, 0x41880000    # 17.0f

    sget v5, Lru/fokus/tetrad/Ui;->MUTED:I

    sget-object v6, Lru/fokus/tetrad/Ui;->BODY:Landroid/graphics/Typeface;

    invoke-static {p0, v1, v4, v5, v6}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 109
    invoke-static {p0}, Lru/fokus/tetrad/Ui;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 110
    const-string v1, "\u041f\u043e\u0434\u043a\u043b\u044e\u0447\u0438\u043c \u0418\u0418-\u0443\u0447\u0438\u0442\u0435\u043b\u044f"

    invoke-static {p0, v1}, Lru/fokus/tetrad/Ui;->title(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 111
    const-string v1, "\u041f\u0440\u043e\u0432\u0435\u0440\u043a\u0443 \u0434\u0435\u043b\u0430\u0435\u0442 GigaChat \u043e\u0442 \u0421\u0431\u0435\u0440\u0430. \u0414\u043b\u044f \u0443\u0447\u0435\u043d\u0438\u043a\u043e\u0432 \u043e\u043d \u0431\u0435\u0441\u043f\u043b\u0430\u0442\u043d\u044b\u0439, \u043d\u0443\u0436\u0435\u043d \u0442\u043e\u043b\u044c\u043a\u043e \u043b\u0438\u0447\u043d\u044b\u0439 \u043a\u043b\u044e\u0447. \u042d\u0442\u043e \u0437\u0430\u0439\u043c\u0451\u0442 \u043f\u0430\u0440\u0443 \u043c\u0438\u043d\u0443\u0442 \u0438 \u0434\u0435\u043b\u0430\u0435\u0442\u0441\u044f \u043e\u0434\u0438\u043d \u0440\u0430\u0437."

    const/high16 v4, 0x41700000    # 15.0f

    sget v5, Lru/fokus/tetrad/Ui;->FG:I

    sget-object v6, Lru/fokus/tetrad/Ui;->BODY:Landroid/graphics/Typeface;

    invoke-static {p0, v1, v4, v5, v6}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 112
    const-string v1, "1"

    const-string v4, "\u041d\u0430\u0436\u043c\u0438 \u00ab\u041f\u043e\u043b\u0443\u0447\u0438\u0442\u044c \u043a\u043b\u044e\u0447\u00bb \u2014 \u043e\u0442\u043a\u0440\u043e\u0435\u0442\u0441\u044f \u043a\u0430\u0431\u0438\u043d\u0435\u0442 \u0421\u0431\u0435\u0440\u0430. \u0412\u043e\u0439\u0434\u0438 \u0447\u0435\u0440\u0435\u0437 \u0421\u0431\u0435\u0440 ID (\u043f\u043e\u0434\u043e\u0439\u0434\u0451\u0442 \u043d\u043e\u043c\u0435\u0440 \u0442\u0435\u043b\u0435\u0444\u043e\u043d\u0430; \u0435\u0441\u043b\u0438 \u0443\u0447\u0435\u043d\u0438\u043a\u0443 \u043d\u0435\u0442 18 \u2014 \u043f\u0443\u0441\u0442\u044c \u0432\u043e\u0439\u0434\u0451\u0442 \u0440\u043e\u0434\u0438\u0442\u0435\u043b\u044c)."

    invoke-direct {p0, v1, v4}, Lru/fokus/tetrad/OnboardingActivity;->step(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 113
    const-string v1, "2"

    const-string v4, "\u041d\u0430\u0436\u043c\u0438 \u00ab\u0421\u043e\u0437\u0434\u0430\u0442\u044c \u043f\u0440\u043e\u0435\u043a\u0442\u00bb \u2192 \u00abGigaChat API\u00bb (\u0435\u0441\u043b\u0438 \u043f\u0440\u043e\u0435\u043a\u0442 \u0443\u0436\u0435 \u0435\u0441\u0442\u044c \u2014 \u043e\u0442\u043a\u0440\u043e\u0439 \u0435\u0433\u043e)."

    invoke-direct {p0, v1, v4}, Lru/fokus/tetrad/OnboardingActivity;->step(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 114
    const-string v1, "3"

    const-string v4, "\u0412 \u0440\u0430\u0437\u0434\u0435\u043b\u0435 \u00ab\u041d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0430 API\u00bb \u043d\u0430\u0436\u043c\u0438 \u00ab\u041f\u043e\u043b\u0443\u0447\u0438\u0442\u044c \u043a\u043b\u044e\u0447\u00bb \u0438 \u0441\u043a\u043e\u043f\u0438\u0440\u0443\u0439 \u00ab\u041a\u043b\u044e\u0447 \u0430\u0432\u0442\u043e\u0440\u0438\u0437\u0430\u0446\u0438\u0438\u00bb \u2014 \u0434\u043b\u0438\u043d\u043d\u0443\u044e \u0441\u0442\u0440\u043e\u043a\u0443. \u0415\u0451 \u043f\u043e\u043a\u0430\u0437\u044b\u0432\u0430\u044e\u0442 \u043e\u0434\u0438\u043d \u0440\u0430\u0437."

    invoke-direct {p0, v1, v4}, Lru/fokus/tetrad/OnboardingActivity;->step(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 115
    const-string v1, "4"

    const-string v4, "\u0412\u0435\u0440\u043d\u0438\u0441\u044c \u0441\u044e\u0434\u0430 \u2014 \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u0435 \u0441\u0430\u043c\u043e \u043d\u0430\u0439\u0434\u0451\u0442 \u043a\u043b\u044e\u0447 \u0432 \u0431\u0443\u0444\u0435\u0440\u0435 \u043e\u0431\u043c\u0435\u043d\u0430."

    invoke-direct {p0, v1, v4}, Lru/fokus/tetrad/OnboardingActivity;->step(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 116
    const-string v1, "\u041f\u043e\u043b\u0443\u0447\u0438\u0442\u044c \u043a\u043b\u044e\u0447"

    invoke-static {p0, v1, v3, v2}, Lru/fokus/tetrad/Ui;->button(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v1

    .line 117
    new-instance v4, Lru/fokus/tetrad/OnboardingActivity$2;

    invoke-direct {v4, p0}, Lru/fokus/tetrad/OnboardingActivity$2;-><init>(Lru/fokus/tetrad/OnboardingActivity;)V

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    invoke-static {}, Lru/fokus/tetrad/Ui;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 124
    const-string v1, "\u0423 \u043c\u0435\u043d\u044f \u0443\u0436\u0435 \u0435\u0441\u0442\u044c \u043a\u043b\u044e\u0447"

    invoke-static {p0, v1, v2, v3}, Lru/fokus/tetrad/Ui;->button(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v1

    .line 125
    new-instance v4, Lru/fokus/tetrad/OnboardingActivity$3;

    invoke-direct {v4, p0}, Lru/fokus/tetrad/OnboardingActivity$3;-><init>(Lru/fokus/tetrad/OnboardingActivity;)V

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    invoke-static {}, Lru/fokus/tetrad/Ui;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 127
    iget-object v1, p0, Lru/fokus/tetrad/OnboardingActivity;->content:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 129
    invoke-static {p0}, Lru/fokus/tetrad/Ui;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 130
    const-string v1, "\u041d\u0435\u0442 \u0421\u0431\u0435\u0440 ID?"

    invoke-static {p0, v1}, Lru/fokus/tetrad/Ui;->title(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 131
    const-string v1, "\u041c\u043e\u0436\u043d\u043e \u043f\u043e\u0434\u043a\u043b\u044e\u0447\u0438\u0442\u044c \u0434\u0440\u0443\u0433\u0443\u044e \u0431\u0435\u0441\u043f\u043b\u0430\u0442\u043d\u0443\u044e \u043d\u0435\u0439\u0440\u043e\u0441\u0435\u0442\u044c \u2014 GLM \u043e\u0442 Z.ai. \u0420\u0435\u0433\u0438\u0441\u0442\u0440\u0430\u0446\u0438\u044f \u043f\u043e \u043f\u043e\u0447\u0442\u0435 \u0438\u043b\u0438 \u0447\u0435\u0440\u0435\u0437 Google, \u0442\u043e\u0436\u0435 \u043f\u0430\u0440\u0430 \u043c\u0438\u043d\u0443\u0442. \u041e\u043d\u0430 \u043f\u043e\u043d\u0438\u043c\u0430\u0435\u0442 \u0444\u043e\u0442\u043e \u0438 \u0431\u0435\u0441\u043f\u043b\u0430\u0442\u043d\u043e \u043e\u0431\u0440\u0430\u0431\u0430\u0442\u044b\u0432\u0430\u0435\u0442 \u043e\u0434\u0438\u043d \u0437\u0430\u043f\u0440\u043e\u0441 \u0437\u0430 \u0440\u0430\u0437. \u0414\u0430\u043d\u043d\u044b\u0435 \u043e\u0431\u0440\u0430\u0431\u0430\u0442\u044b\u0432\u0430\u044e\u0442\u0441\u044f \u043d\u0430 \u0441\u0435\u0440\u0432\u0435\u0440\u0430\u0445 \u0432 \u041a\u0438\u0442\u0430\u0435."

    sget v4, Lru/fokus/tetrad/Ui;->FG:I

    sget-object v5, Lru/fokus/tetrad/Ui;->BODY:Landroid/graphics/Typeface;

    invoke-static {p0, v1, v9, v4, v5}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 132
    const-string v1, "1"

    const-string v4, "\u041d\u0430\u0436\u043c\u0438 \u00ab\u041f\u043e\u0434\u043a\u043b\u044e\u0447\u0438\u0442\u044c GLM\u00bb \u2014 \u043e\u0442\u043a\u0440\u043e\u0435\u0442\u0441\u044f \u0441\u0430\u0439\u0442 Z.ai. \u0417\u0430\u0440\u0435\u0433\u0438\u0441\u0442\u0440\u0438\u0440\u0443\u0439\u0441\u044f."

    invoke-direct {p0, v1, v4}, Lru/fokus/tetrad/OnboardingActivity;->step(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 133
    const-string v1, "2"

    const-string v4, "\u0412 \u0440\u0430\u0437\u0434\u0435\u043b\u0435 API Keys \u043d\u0430\u0436\u043c\u0438 \u00abCreate API Key\u00bb \u0438 \u0441\u043a\u043e\u043f\u0438\u0440\u0443\u0439 \u043a\u043b\u044e\u0447."

    invoke-direct {p0, v1, v4}, Lru/fokus/tetrad/OnboardingActivity;->step(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 134
    const-string v1, "3"

    const-string v4, "\u0412\u0435\u0440\u043d\u0438\u0441\u044c \u0441\u044e\u0434\u0430 \u2014 \u043a\u043b\u044e\u0447 \u0432\u0441\u0442\u0430\u0432\u0438\u0442\u0441\u044f \u0441\u0430\u043c."

    invoke-direct {p0, v1, v4}, Lru/fokus/tetrad/OnboardingActivity;->step(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 135
    const-string v1, "\u041f\u043e\u0434\u043a\u043b\u044e\u0447\u0438\u0442\u044c GLM (Z.ai)"

    invoke-static {p0, v1, v2, v3}, Lru/fokus/tetrad/Ui;->button(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v1

    .line 136
    new-instance v2, Lru/fokus/tetrad/OnboardingActivity$4;

    invoke-direct {v2, p0}, Lru/fokus/tetrad/OnboardingActivity$4;-><init>(Lru/fokus/tetrad/OnboardingActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    invoke-static {}, Lru/fokus/tetrad/Ui;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 143
    iget-object v1, p0, Lru/fokus/tetrad/OnboardingActivity;->content:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 189
    :goto_3
    const-string v0, "\u041f\u0440\u043e\u043f\u0443\u0441\u0442\u0438\u0442\u044c \u2014 \u043f\u043e\u0434\u043a\u043b\u044e\u0447\u0443 \u043f\u043e\u0437\u0436\u0435"

    const/4 v1, 0x3

    invoke-static {p0, v0, v1, v3}, Lru/fokus/tetrad/Ui;->button(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v0

    .line 190
    new-instance v1, Lru/fokus/tetrad/OnboardingActivity$9;

    invoke-direct {v1, p0}, Lru/fokus/tetrad/OnboardingActivity$9;-><init>(Lru/fokus/tetrad/OnboardingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    iget-object v1, p0, Lru/fokus/tetrad/OnboardingActivity;->content:Landroid/widget/LinearLayout;

    invoke-static {}, Lru/fokus/tetrad/Ui;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 192
    const-string v0, "\u0411\u0435\u0437 \u0418\u0418 \u0440\u0430\u0431\u043e\u0442\u0430\u044e\u0442 \u0431\u043b\u043e\u043a\u0438\u0440\u043e\u0432\u043a\u0430, \u0442\u0430\u0439\u043c\u0435\u0440, \u0440\u0430\u0441\u043f\u0438\u0441\u0430\u043d\u0438\u0435 \u0438 \u043e\u0446\u0435\u043d\u043a\u0438 \u0438\u0437 \u041c\u042d\u0428. \u041f\u043e\u0434\u043a\u043b\u044e\u0447\u0438\u0442\u044c \u043a\u043b\u044e\u0447 \u043c\u043e\u0436\u043d\u043e \u043f\u043e\u0437\u0436\u0435 \u0432 \u2699 \u041d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0430\u0445."

    const/high16 v1, 0x41400000    # 12.0f

    sget v2, Lru/fokus/tetrad/Ui;->MUTED:I

    sget-object v3, Lru/fokus/tetrad/Ui;->BODY:Landroid/graphics/Typeface;

    invoke-static {p0, v0, v1, v2, v3}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v0

    .line 193
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 194
    iget-object v1, p0, Lru/fokus/tetrad/OnboardingActivity;->content:Landroid/widget/LinearLayout;

    invoke-static {}, Lru/fokus/tetrad/Ui;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 195
    return-void

    .line 145
    :cond_3
    iget-object v0, p0, Lru/fokus/tetrad/OnboardingActivity;->content:Landroid/widget/LinearLayout;

    const-string v4, "\u0412\u0441\u0442\u0430\u0432\u044c \u043a\u043b\u044e\u0447"

    const/high16 v5, 0x41c00000    # 24.0f

    sget v6, Lru/fokus/tetrad/Ui;->FG:I

    sget-object v7, Lru/fokus/tetrad/Ui;->BOLD:Landroid/graphics/Typeface;

    invoke-static {p0, v4, v5, v6, v7}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 146
    invoke-static {p0}, Lru/fokus/tetrad/Ui;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 147
    iget-boolean v0, p0, Lru/fokus/tetrad/OnboardingActivity;->zaiMode:Z

    if-eqz v0, :cond_6

    const-string v0, "API-\u043a\u043b\u044e\u0447 \u0438\u0437 \u0440\u0430\u0437\u0434\u0435\u043b\u0430 API Keys \u043d\u0430 \u0441\u0430\u0439\u0442\u0435 Z.ai \u2014 \u0441\u0442\u0440\u043e\u043a\u0430 \u0438\u0437 \u0431\u0443\u043a\u0432 \u0438 \u0446\u0438\u0444\u0440 \u0441 \u0442\u043e\u0447\u043a\u043e\u0439 \u043f\u043e\u0441\u0435\u0440\u0435\u0434\u0438\u043d\u0435."

    .line 148
    :goto_4
    const/high16 v5, 0x41700000    # 15.0f

    sget v6, Lru/fokus/tetrad/Ui;->MUTED:I

    sget-object v7, Lru/fokus/tetrad/Ui;->BODY:Landroid/graphics/Typeface;

    .line 147
    invoke-static {p0, v0, v5, v6, v7}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 149
    iget-object v0, p0, Lru/fokus/tetrad/OnboardingActivity;->keyField:Landroid/widget/EditText;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lru/fokus/tetrad/OnboardingActivity;->keyField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 150
    :goto_5
    const-string v5, "\u041a\u043b\u044e\u0447 \u0430\u0432\u0442\u043e\u0440\u0438\u0437\u0430\u0446\u0438\u0438"

    invoke-static {p0, v5, v3}, Lru/fokus/tetrad/Ui;->edit(Landroid/content/Context;Ljava/lang/String;Z)Landroid/widget/EditText;

    move-result-object v5

    iput-object v5, p0, Lru/fokus/tetrad/OnboardingActivity;->keyField:Landroid/widget/EditText;

    .line 151
    iget-object v5, p0, Lru/fokus/tetrad/OnboardingActivity;->keyField:Landroid/widget/EditText;

    const/16 v6, 0x91

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setInputType(I)V

    .line 152
    iget-object v5, p0, Lru/fokus/tetrad/OnboardingActivity;->keyField:Landroid/widget/EditText;

    invoke-virtual {v5, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 153
    iget-object v0, p0, Lru/fokus/tetrad/OnboardingActivity;->keyField:Landroid/widget/EditText;

    invoke-static {}, Lru/fokus/tetrad/Ui;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 154
    const/16 v0, 0xa

    invoke-static {p0, v0}, Lru/fokus/tetrad/Ui;->row(Landroid/content/Context;I)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 155
    const-string v5, "\u0412\u0441\u0442\u0430\u0432\u0438\u0442\u044c \u0438\u0437 \u0431\u0443\u0444\u0435\u0440\u0430"

    invoke-static {p0, v5, v2, v3}, Lru/fokus/tetrad/Ui;->button(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v5

    .line 156
    new-instance v6, Lru/fokus/tetrad/OnboardingActivity$5;

    invoke-direct {v6, p0}, Lru/fokus/tetrad/OnboardingActivity$5;-><init>(Lru/fokus/tetrad/OnboardingActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    invoke-static {v10}, Lru/fokus/tetrad/Ui;->weight(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 163
    const-string v5, "\u041e\u0442\u043a\u0440\u044b\u0442\u044c \u043a\u0430\u0431\u0438\u043d\u0435\u0442"

    invoke-static {p0, v5, v2, v3}, Lru/fokus/tetrad/Ui;->button(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v5

    .line 164
    new-instance v6, Lru/fokus/tetrad/OnboardingActivity$6;

    invoke-direct {v6, p0}, Lru/fokus/tetrad/OnboardingActivity$6;-><init>(Lru/fokus/tetrad/OnboardingActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    invoke-static {v10}, Lru/fokus/tetrad/Ui;->weight(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 169
    invoke-static {}, Lru/fokus/tetrad/Ui;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 171
    iget-boolean v0, p0, Lru/fokus/tetrad/OnboardingActivity;->testing:Z

    if-eqz v0, :cond_9

    const-string v0, "\u041f\u0440\u043e\u0432\u0435\u0440\u044f\u044e\u2026"

    :goto_6
    invoke-static {p0, v0, v3, v2}, Lru/fokus/tetrad/Ui;->button(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v5

    .line 172
    iget-boolean v0, p0, Lru/fokus/tetrad/OnboardingActivity;->testing:Z

    if-nez v0, :cond_a

    move v0, v2

    :goto_7
    invoke-static {v5, v0}, Lru/fokus/tetrad/Ui;->setEnabled(Landroid/view/View;Z)V

    .line 173
    new-instance v0, Lru/fokus/tetrad/OnboardingActivity$7;

    invoke-direct {v0, p0}, Lru/fokus/tetrad/OnboardingActivity$7;-><init>(Lru/fokus/tetrad/OnboardingActivity;)V

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    invoke-static {}, Lru/fokus/tetrad/Ui;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 175
    iget-boolean v0, p0, Lru/fokus/tetrad/OnboardingActivity;->testing:Z

    if-eqz v0, :cond_4

    .line 176
    const/16 v0, 0xa

    invoke-static {p0, v0}, Lru/fokus/tetrad/Ui;->row(Landroid/content/Context;I)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 177
    new-instance v2, Landroid/widget/ProgressBar;

    invoke-direct {v2, p0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {v1}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v6

    invoke-static {v1}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v1

    invoke-direct {v5, v6, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 178
    const-string v1, "\u041e\u0442\u043f\u0440\u0430\u0432\u043b\u044f\u044e \u043f\u0440\u043e\u0431\u043d\u044b\u0439 \u0437\u0430\u043f\u0440\u043e\u0441\u2026"

    sget v2, Lru/fokus/tetrad/Ui;->MUTED:I

    sget-object v5, Lru/fokus/tetrad/Ui;->BODY:Landroid/graphics/Typeface;

    invoke-static {p0, v1, v9, v2, v5}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 179
    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 181
    :cond_4
    iget-object v0, p0, Lru/fokus/tetrad/OnboardingActivity;->status:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v1, p0, Lru/fokus/tetrad/OnboardingActivity;->status:Ljava/lang/String;

    iget-boolean v0, p0, Lru/fokus/tetrad/OnboardingActivity;->statusOk:Z

    if-eqz v0, :cond_b

    sget v0, Lru/fokus/tetrad/Ui;->OK:I

    :goto_8
    sget-object v2, Lru/fokus/tetrad/Ui;->MEDIUM:Landroid/graphics/Typeface;

    invoke-static {p0, v1, v9, v0, v2}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 182
    :cond_5
    const-string v0, "\u041a\u043b\u044e\u0447 \u0445\u0440\u0430\u043d\u0438\u0442\u0441\u044f \u0442\u043e\u043b\u044c\u043a\u043e \u043d\u0430 \u044d\u0442\u043e\u043c \u0442\u0435\u043b\u0435\u0444\u043e\u043d\u0435. \u041d\u0435 \u043e\u0442\u043f\u0440\u0430\u0432\u043b\u044f\u0439 \u0435\u0433\u043e \u0434\u0440\u0443\u0433\u0438\u043c \u043b\u044e\u0434\u044f\u043c \u2014 \u043a\u043b\u044e\u0447 \u043b\u0438\u0447\u043d\u044b\u0439."

    const/high16 v1, 0x41400000    # 12.0f

    sget v2, Lru/fokus/tetrad/Ui;->MUTED:I

    sget-object v5, Lru/fokus/tetrad/Ui;->BODY:Landroid/graphics/Typeface;

    invoke-static {p0, v0, v1, v2, v5}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 183
    iget-object v0, p0, Lru/fokus/tetrad/OnboardingActivity;->content:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 184
    const-string v0, "\u2190 \u041a\u0430\u043a \u043f\u043e\u043b\u0443\u0447\u0438\u0442\u044c \u043a\u043b\u044e\u0447"

    const/4 v1, 0x3

    invoke-static {p0, v0, v1, v3}, Lru/fokus/tetrad/Ui;->button(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v0

    .line 185
    new-instance v1, Lru/fokus/tetrad/OnboardingActivity$8;

    invoke-direct {v1, p0}, Lru/fokus/tetrad/OnboardingActivity$8;-><init>(Lru/fokus/tetrad/OnboardingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    iget-object v1, p0, Lru/fokus/tetrad/OnboardingActivity;->content:Landroid/widget/LinearLayout;

    invoke-static {}, Lru/fokus/tetrad/Ui;->wrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_3

    .line 148
    :cond_6
    const-string v0, "\u00ab\u041a\u043b\u044e\u0447 \u0430\u0432\u0442\u043e\u0440\u0438\u0437\u0430\u0446\u0438\u0438\u00bb \u0438\u0437 \u043a\u0430\u0431\u0438\u043d\u0435\u0442\u0430 GigaChat \u2014 \u0434\u043b\u0438\u043d\u043d\u0430\u044f \u0441\u0442\u0440\u043e\u043a\u0430 \u0438\u0437 \u0431\u0443\u043a\u0432 \u0438 \u0446\u0438\u0444\u0440, \u043e\u0431\u044b\u0447\u043d\u043e \u0437\u0430\u043a\u0430\u043d\u0447\u0438\u0432\u0430\u0435\u0442\u0441\u044f \u043d\u0430 \u00ab==\u00bb."

    goto/16 :goto_4

    .line 149
    :cond_7
    iget-boolean v0, p0, Lru/fokus/tetrad/OnboardingActivity;->zaiMode:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lru/fokus/tetrad/OnboardingActivity;->store:Lru/fokus/tetrad/Store;

    invoke-virtual {v0}, Lru/fokus/tetrad/Store;->zaiKey()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5

    :cond_8
    iget-object v0, p0, Lru/fokus/tetrad/OnboardingActivity;->store:Lru/fokus/tetrad/Store;

    invoke-virtual {v0}, Lru/fokus/tetrad/Store;->gigaKey()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5

    .line 171
    :cond_9
    const-string v0, "\u041f\u0440\u043e\u0432\u0435\u0440\u0438\u0442\u044c \u0438 \u043d\u0430\u0447\u0430\u0442\u044c"

    goto/16 :goto_6

    :cond_a
    move v0, v3

    .line 172
    goto/16 :goto_7

    .line 181
    :cond_b
    sget v0, Lru/fokus/tetrad/Ui;->RED:I

    goto :goto_8
.end method

.method private step(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;
    .locals 7

    .prologue
    const/high16 v6, 0x41c00000    # 24.0f

    .line 225
    const/16 v0, 0xa

    invoke-static {p0, v0}, Lru/fokus/tetrad/Ui;->row(Landroid/content/Context;I)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 226
    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 227
    const/high16 v1, 0x41500000    # 13.0f

    sget v2, Lru/fokus/tetrad/Ui;->INK:I

    sget-object v3, Lru/fokus/tetrad/Ui;->BOLD:Landroid/graphics/Typeface;

    invoke-static {p0, p1, v1, v2, v3}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v1

    .line 228
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 229
    sget v2, Lru/fokus/tetrad/Ui;->INK_SOFT:I

    const v3, 0x4479c000    # 999.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Lru/fokus/tetrad/Ui;->round(IFIF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 230
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {v6}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v3

    invoke-static {v6}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 231
    const/high16 v1, 0x41600000    # 14.0f

    sget v2, Lru/fokus/tetrad/Ui;->FG:I

    sget-object v3, Lru/fokus/tetrad/Ui;->BODY:Landroid/graphics/Typeface;

    invoke-static {p0, p2, v1, v2, v3}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2}, Lru/fokus/tetrad/Ui;->weight(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 232
    return-object v0
.end method

.method private testKey()V
    .locals 3

    .prologue
    .line 198
    iget-object v0, p0, Lru/fokus/tetrad/OnboardingActivity;->keyField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 199
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x14

    if-ge v1, v2, :cond_0

    const-string v0, "\u0412\u0441\u0442\u0430\u0432\u044c \u043a\u043b\u044e\u0447 \u0430\u0432\u0442\u043e\u0440\u0438\u0437\u0430\u0446\u0438\u0438 \u0446\u0435\u043b\u0438\u043a\u043e\u043c."

    iput-object v0, p0, Lru/fokus/tetrad/OnboardingActivity;->status:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lru/fokus/tetrad/OnboardingActivity;->statusOk:Z

    invoke-direct {p0}, Lru/fokus/tetrad/OnboardingActivity;->render()V

    .line 222
    :goto_0
    return-void

    .line 200
    :cond_0
    iget-boolean v1, p0, Lru/fokus/tetrad/OnboardingActivity;->zaiMode:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lru/fokus/tetrad/OnboardingActivity;->store:Lru/fokus/tetrad/Store;

    const-string v2, "zai"

    invoke-virtual {v1, v2}, Lru/fokus/tetrad/Store;->setProvider(Ljava/lang/String;)V

    iget-object v1, p0, Lru/fokus/tetrad/OnboardingActivity;->store:Lru/fokus/tetrad/Store;

    invoke-virtual {v1, v0}, Lru/fokus/tetrad/Store;->setZaiKey(Ljava/lang/String;)V

    .line 202
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lru/fokus/tetrad/OnboardingActivity;->testing:Z

    .line 203
    const-string v0, ""

    iput-object v0, p0, Lru/fokus/tetrad/OnboardingActivity;->status:Ljava/lang/String;

    .line 204
    invoke-direct {p0}, Lru/fokus/tetrad/OnboardingActivity;->render()V

    .line 205
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lru/fokus/tetrad/OnboardingActivity$10;

    invoke-direct {v1, p0}, Lru/fokus/tetrad/OnboardingActivity$10;-><init>(Lru/fokus/tetrad/OnboardingActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 221
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 201
    :cond_1
    iget-object v1, p0, Lru/fokus/tetrad/OnboardingActivity;->store:Lru/fokus/tetrad/Store;

    const-string v2, "gigachat"

    invoke-virtual {v1, v2}, Lru/fokus/tetrad/Store;->setProvider(Ljava/lang/String;)V

    iget-object v1, p0, Lru/fokus/tetrad/OnboardingActivity;->store:Lru/fokus/tetrad/Store;

    invoke-virtual {v1, v0}, Lru/fokus/tetrad/Store;->setGigaKey(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/high16 v5, 0x41e00000    # 28.0f

    const/high16 v4, 0x41b00000    # 22.0f

    const/4 v2, 0x0

    .line 37
    invoke-static {p0, v2}, Lru/fokus/tetrad/Ui;->applyTheme(Landroid/app/Activity;Z)V

    .line 38
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    sget v0, Lru/fokus/tetrad/Ui;->BG:I

    sget-boolean v1, Lru/fokus/tetrad/Ui;->night:Z

    invoke-static {p0, v0, v1}, Lru/fokus/tetrad/Ui;->paintBars(Landroid/app/Activity;IZ)V

    .line 40
    new-instance v0, Lru/fokus/tetrad/Store;

    invoke-direct {v0, p0}, Lru/fokus/tetrad/Store;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lru/fokus/tetrad/OnboardingActivity;->store:Lru/fokus/tetrad/Store;

    .line 41
    if-eqz p1, :cond_0

    const-string v0, "step"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lru/fokus/tetrad/OnboardingActivity;->step:I

    const-string v0, "zai"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lru/fokus/tetrad/OnboardingActivity;->zaiMode:Z

    .line 42
    :cond_0
    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 43
    sget v1, Lru/fokus/tetrad/Ui;->BG:I

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setBackgroundColor(I)V

    .line 44
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 45
    const/16 v1, 0x12

    invoke-static {p0, v1}, Lru/fokus/tetrad/Ui;->col(Landroid/content/Context;I)Landroid/widget/LinearLayout;

    move-result-object v1

    iput-object v1, p0, Lru/fokus/tetrad/OnboardingActivity;->content:Landroid/widget/LinearLayout;

    .line 46
    iget-object v1, p0, Lru/fokus/tetrad/OnboardingActivity;->content:Landroid/widget/LinearLayout;

    invoke-static {v4}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v2

    invoke-static {v5}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v3

    invoke-static {v4}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v4

    invoke-static {v5}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 47
    iget-object v1, p0, Lru/fokus/tetrad/OnboardingActivity;->content:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 48
    invoke-virtual {p0, v0}, Lru/fokus/tetrad/OnboardingActivity;->setContentView(Landroid/view/View;)V

    .line 49
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 56
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 57
    invoke-direct {p0}, Lru/fokus/tetrad/OnboardingActivity;->render()V

    .line 59
    iget v0, p0, Lru/fokus/tetrad/OnboardingActivity;->step:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lru/fokus/tetrad/OnboardingActivity;->clipOffered:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lru/fokus/tetrad/OnboardingActivity;->content:Landroid/widget/LinearLayout;

    new-instance v1, Lru/fokus/tetrad/OnboardingActivity$1;

    invoke-direct {v1, p0}, Lru/fokus/tetrad/OnboardingActivity$1;-><init>(Lru/fokus/tetrad/OnboardingActivity;)V

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 60
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 51
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "step"

    iget v1, p0, Lru/fokus/tetrad/OnboardingActivity;->step:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "zai"

    iget-boolean v1, p0, Lru/fokus/tetrad/OnboardingActivity;->zaiMode:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
