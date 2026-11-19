.class public Lru/fokus/tetrad/CheckActivity;
.super Landroid/app/Activity;
.source "CheckActivity.java"

# interfaces
.implements Lru/fokus/tetrad/CheckState$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/fokus/tetrad/CheckActivity$Bold;
    }
.end annotation


# static fields
.field public static final EXTRA_FROM_LESSON:Ljava/lang/String; = "fromLesson"

.field public static final EXTRA_STANDALONE:Ljava/lang/String; = "standalone"

.field private static final MAX:I = 0x5

.field private static final RC_COND_CAM:I = 0xb

.field private static final RC_COND_GAL:I = 0xc

.field private static final RC_SOL_CAM:I = 0x15

.field private static final RC_SOL_GAL:I = 0x16


# instance fields
.field private content:Landroid/widget/LinearLayout;

.field private cs:Lru/fokus/tetrad/CheckState;

.field private reportAnchor:Landroid/view/View;

.field private scroll:Landroid/widget/ScrollView;

.field private scrollToReport:Z

.field private showWritten:Z

.field private store:Lru/fokus/tetrad/Store;

.field private wasChecking:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 42
    iput-boolean v0, p0, Lru/fokus/tetrad/CheckActivity;->scrollToReport:Z

    .line 43
    iput-boolean v0, p0, Lru/fokus/tetrad/CheckActivity;->showWritten:Z

    .line 89
    iput-boolean v0, p0, Lru/fokus/tetrad/CheckActivity;->wasChecking:Z

    return-void
.end method

.method static synthetic access$000(Lru/fokus/tetrad/CheckActivity;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lru/fokus/tetrad/CheckActivity;->goHome()V

    return-void
.end method

.method static synthetic access$102(Lru/fokus/tetrad/CheckActivity;Z)Z
    .locals 0

    .prologue
    .line 32
    iput-boolean p1, p0, Lru/fokus/tetrad/CheckActivity;->showWritten:Z

    return p1
.end method

.method static synthetic access$200(Lru/fokus/tetrad/CheckActivity;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lru/fokus/tetrad/CheckActivity;->render()V

    return-void
.end method

.method static synthetic access$300(Lru/fokus/tetrad/CheckActivity;)Lru/fokus/tetrad/CheckState;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lru/fokus/tetrad/CheckActivity;->cs:Lru/fokus/tetrad/CheckState;

    return-object v0
.end method

.method static synthetic access$400(Lru/fokus/tetrad/CheckActivity;)Lru/fokus/tetrad/Store;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lru/fokus/tetrad/CheckActivity;->store:Lru/fokus/tetrad/Store;

    return-object v0
.end method

.method static synthetic access$500(Lru/fokus/tetrad/CheckActivity;)Z
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, Lru/fokus/tetrad/CheckActivity;->scrollToReport:Z

    return v0
.end method

.method static synthetic access$502(Lru/fokus/tetrad/CheckActivity;Z)Z
    .locals 0

    .prologue
    .line 32
    iput-boolean p1, p0, Lru/fokus/tetrad/CheckActivity;->scrollToReport:Z

    return p1
.end method

.method static synthetic access$600(Lru/fokus/tetrad/CheckActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lru/fokus/tetrad/CheckActivity;->reportAnchor:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$700(Lru/fokus/tetrad/CheckActivity;)Landroid/widget/ScrollView;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lru/fokus/tetrad/CheckActivity;->scroll:Landroid/widget/ScrollView;

    return-object v0
.end method

.method static synthetic access$800(Lru/fokus/tetrad/CheckActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lru/fokus/tetrad/CheckActivity;->send(Ljava/lang/String;)V

    return-void
.end method

.method private chatCard()Landroid/view/View;
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/16 v11, 0x8

    const/4 v1, 0x1

    const/high16 v10, 0x41600000    # 14.0f

    const/4 v2, 0x0

    .line 431
    invoke-static {p0}, Lru/fokus/tetrad/Ui;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 432
    const-string v0, "\u0421\u043f\u0440\u043e\u0441\u0438 \u0443\u0447\u0438\u0442\u0435\u043b\u044f"

    invoke-static {p0, v0}, Lru/fokus/tetrad/Ui;->title(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 433
    const-string v0, "\u0415\u0441\u043b\u0438 \u0447\u0442\u043e-\u0442\u043e \u043d\u0435\u043f\u043e\u043d\u044f\u0442\u043d\u043e \u2014 \u0441\u043f\u0440\u043e\u0441\u0438. \u0418\u043b\u0438 \u043f\u043e\u043f\u0440\u043e\u0441\u0438 \u043f\u043e\u0445\u043e\u0436\u0443\u044e \u0437\u0430\u0434\u0430\u0447\u0443."

    sget v3, Lru/fokus/tetrad/Ui;->MUTED:I

    sget-object v5, Lru/fokus/tetrad/Ui;->BODY:Landroid/graphics/Typeface;

    invoke-static {p0, v0, v10, v3, v5}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 434
    iget-object v0, p0, Lru/fokus/tetrad/CheckActivity;->cs:Lru/fokus/tetrad/CheckState;

    iget-object v0, v0, Lru/fokus/tetrad/CheckState;->chat:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 435
    const-string v3, "user"

    aget-object v6, v0, v2

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 436
    aget-object v3, v0, v1

    const/high16 v7, 0x41700000    # 15.0f

    if-eqz v6, :cond_0

    sget v0, Lru/fokus/tetrad/Ui;->ON_INK:I

    :goto_1
    sget-object v8, Lru/fokus/tetrad/Ui;->BODY:Landroid/graphics/Typeface;

    invoke-static {p0, v3, v7, v0, v8}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v7

    .line 437
    if-nez v6, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    .line 438
    invoke-static {v10}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v0

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {v3}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v3

    invoke-static {v10}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v8

    const/high16 v9, 0x41200000    # 10.0f

    invoke-static {v9}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v9

    invoke-virtual {v7, v0, v3, v8, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 439
    if-eqz v6, :cond_3

    sget v0, Lru/fokus/tetrad/Ui;->INK:I

    const/high16 v3, 0x41800000    # 16.0f

    invoke-static {v0, v3, v2, v12}, Lru/fokus/tetrad/Ui;->round(IFIF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    :goto_3
    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 440
    new-instance v8, Landroid/widget/LinearLayout;

    invoke-direct {v8, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 441
    if-eqz v6, :cond_4

    const v0, 0x800005

    :goto_4
    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 442
    if-eqz v6, :cond_5

    const/high16 v0, 0x42200000    # 40.0f

    invoke-static {v0}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v0

    move v3, v0

    :goto_5
    if-eqz v6, :cond_6

    move v0, v2

    :goto_6
    invoke-virtual {v8, v3, v2, v0, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 443
    invoke-static {}, Lru/fokus/tetrad/Ui;->wrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v8, v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 444
    invoke-static {}, Lru/fokus/tetrad/Ui;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v4, v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 436
    :cond_0
    const-string v8, "error"

    aget-object v0, v0, v2

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lru/fokus/tetrad/Ui;->RED:I

    goto :goto_1

    :cond_1
    sget v0, Lru/fokus/tetrad/Ui;->FG:I

    goto :goto_1

    :cond_2
    move v0, v2

    .line 437
    goto :goto_2

    .line 439
    :cond_3
    sget v0, Lru/fokus/tetrad/Ui;->BG:I

    const/high16 v3, 0x41800000    # 16.0f

    invoke-static {v0, v3, v2, v12}, Lru/fokus/tetrad/Ui;->round(IFIF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    goto :goto_3

    .line 441
    :cond_4
    const v0, 0x800003

    goto :goto_4

    :cond_5
    move v3, v2

    .line 442
    goto :goto_5

    :cond_6
    const/high16 v0, 0x41c00000    # 24.0f

    invoke-static {v0}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v0

    goto :goto_6

    .line 446
    :cond_7
    iget-object v0, p0, Lru/fokus/tetrad/CheckActivity;->cs:Lru/fokus/tetrad/CheckState;

    iget-boolean v0, v0, Lru/fokus/tetrad/CheckState;->chatBusy:Z

    if-eqz v0, :cond_8

    .line 447
    invoke-static {p0, v11}, Lru/fokus/tetrad/Ui;->row(Landroid/content/Context;I)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 448
    new-instance v3, Landroid/widget/ProgressBar;

    invoke-direct {v3, p0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x41a00000    # 20.0f

    invoke-static {v6}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v6

    const/high16 v7, 0x41a00000    # 20.0f

    invoke-static {v7}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v7

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 449
    const-string v3, "\u0423\u0447\u0438\u0442\u0435\u043b\u044c \u0434\u0443\u043c\u0430\u0435\u0442\u2026"

    sget v5, Lru/fokus/tetrad/Ui;->MUTED:I

    sget-object v6, Lru/fokus/tetrad/Ui;->BODY:Landroid/graphics/Typeface;

    invoke-static {p0, v3, v10, v5, v6}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 450
    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 452
    :cond_8
    iget-object v0, p0, Lru/fokus/tetrad/CheckActivity;->cs:Lru/fokus/tetrad/CheckState;

    iget-object v0, v0, Lru/fokus/tetrad/CheckState;->chat:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 453
    new-instance v3, Landroid/widget/HorizontalScrollView;

    invoke-direct {v3, p0}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 454
    invoke-virtual {v3, v2}, Landroid/widget/HorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 455
    invoke-static {p0, v11}, Lru/fokus/tetrad/Ui;->row(Landroid/content/Context;I)Landroid/widget/LinearLayout;

    move-result-object v5

    .line 456
    const/4 v0, 0x3

    new-array v6, v0, [Ljava/lang/String;

    const-string v0, "\u041e\u0431\u044a\u044f\u0441\u043d\u0438 \u043e\u0448\u0438\u0431\u043a\u0443 \u043f\u0440\u043e\u0449\u0435"

    aput-object v0, v6, v2

    const-string v0, "\u0414\u0430\u0439 \u043f\u043e\u0445\u043e\u0436\u0443\u044e \u0437\u0430\u0434\u0430\u0447\u0443"

    aput-object v0, v6, v1

    const/4 v0, 0x2

    const-string v1, "\u041a\u0430\u043a \u043d\u0435 \u043e\u0448\u0438\u0431\u0430\u0442\u044c\u0441\u044f?"

    aput-object v1, v6, v0

    array-length v1, v6

    move v0, v2

    :goto_7
    if-ge v0, v1, :cond_9

    aget-object v7, v6, v0

    .line 457
    invoke-static {p0, v7, v2}, Lru/fokus/tetrad/Ui;->chip(Landroid/content/Context;Ljava/lang/String;Z)Landroid/widget/TextView;

    move-result-object v8

    .line 458
    new-instance v9, Lru/fokus/tetrad/CheckActivity$14;

    invoke-direct {v9, p0, v7}, Lru/fokus/tetrad/CheckActivity$14;-><init>(Lru/fokus/tetrad/CheckActivity;Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 459
    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 456
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 461
    :cond_9
    invoke-virtual {v3, v5}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;)V

    .line 462
    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 464
    :cond_a
    invoke-static {p0, v11}, Lru/fokus/tetrad/Ui;->row(Landroid/content/Context;I)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 465
    const-string v1, "\u0422\u0432\u043e\u0439 \u0432\u043e\u043f\u0440\u043e\u0441\u2026"

    invoke-static {p0, v1, v2}, Lru/fokus/tetrad/Ui;->edit(Landroid/content/Context;Ljava/lang/String;Z)Landroid/widget/EditText;

    move-result-object v1

    .line 466
    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 467
    new-instance v3, Lru/fokus/tetrad/CheckActivity$15;

    invoke-direct {v3, p0, v1}, Lru/fokus/tetrad/CheckActivity$15;-><init>(Lru/fokus/tetrad/CheckActivity;Landroid/widget/EditText;)V

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 474
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3}, Lru/fokus/tetrad/Ui;->weight(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 475
    const-string v3, "\u27a4"

    invoke-static {p0, v3, v2, v2}, Lru/fokus/tetrad/Ui;->button(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v2

    .line 476
    const-string v3, "\u041e\u0442\u043f\u0440\u0430\u0432\u0438\u0442\u044c"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 477
    new-instance v3, Lru/fokus/tetrad/CheckActivity$16;

    invoke-direct {v3, p0, v1}, Lru/fokus/tetrad/CheckActivity$16;-><init>(Lru/fokus/tetrad/CheckActivity;Landroid/widget/EditText;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 481
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 482
    invoke-static {}, Lru/fokus/tetrad/Ui;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 483
    return-object v4
.end method

.method private goHome()V
    .locals 2

    .prologue
    .line 100
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lru/fokus/tetrad/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lru/fokus/tetrad/CheckActivity;->startActivity(Landroid/content/Intent;)V

    .line 101
    invoke-virtual {p0}, Lru/fokus/tetrad/CheckActivity;->finish()V

    .line 102
    return-void
.end method

.method private labeled(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/CharSequence;
    .locals 5

    .prologue
    const/16 v4, 0x21

    const/4 v3, 0x0

    .line 285
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 286
    new-instance v1, Lru/fokus/tetrad/CheckActivity$Bold;

    sget-object v2, Lru/fokus/tetrad/Ui;->BOLD:Landroid/graphics/Typeface;

    invoke-direct {v1, v2}, Lru/fokus/tetrad/CheckActivity$Bold;-><init>(Landroid/graphics/Typeface;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 287
    if-eqz p3, :cond_0

    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v1, p3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 288
    :cond_0
    invoke-virtual {v0, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 289
    return-object v0
.end method

.method private render()V
    .locals 15

    .prologue
    const/16 v14, 0xc

    const/high16 v13, 0x3f800000    # 1.0f

    const/high16 v12, 0x41600000    # 14.0f

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 107
    iget-object v0, p0, Lru/fokus/tetrad/CheckActivity;->scroll:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v5

    .line 108
    iget-object v0, p0, Lru/fokus/tetrad/CheckActivity;->content:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 109
    invoke-static {p0, v14}, Lru/fokus/tetrad/Ui;->row(Landroid/content/Context;I)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 110
    const-string v2, "\u2190"

    const-string v4, "\u041d\u0430 \u0433\u043b\u0430\u0432\u043d\u0443\u044e"

    invoke-static {p0, v2, v4}, Lru/fokus/tetrad/Ui;->iconButton(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v2

    .line 111
    new-instance v4, Lru/fokus/tetrad/CheckActivity$1;

    invoke-direct {v4, p0}, Lru/fokus/tetrad/CheckActivity$1;-><init>(Lru/fokus/tetrad/CheckActivity;)V

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x42300000    # 44.0f

    invoke-static {v6}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v6

    const/high16 v7, 0x42300000    # 44.0f

    invoke-static {v7}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v7

    invoke-direct {v4, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 113
    const-string v2, "\u041f\u0440\u043e\u0432\u0435\u0440\u043a\u0430 \u0440\u0435\u0448\u0435\u043d\u0438\u044f"

    const/high16 v4, 0x41a00000    # 20.0f

    sget v6, Lru/fokus/tetrad/Ui;->FG:I

    sget-object v7, Lru/fokus/tetrad/Ui;->BOLD:Landroid/graphics/Typeface;

    invoke-static {p0, v2, v4, v6, v7}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v2

    invoke-static {v13}, Lru/fokus/tetrad/Ui;->weight(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 114
    iget-object v2, p0, Lru/fokus/tetrad/CheckActivity;->content:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 116
    iget-object v0, p0, Lru/fokus/tetrad/CheckActivity;->store:Lru/fokus/tetrad/Store;

    invoke-virtual {v0}, Lru/fokus/tetrad/Store;->aiReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    invoke-static {p0}, Lru/fokus/tetrad/Ui;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 118
    sget v2, Lru/fokus/tetrad/Ui;->WARN_SOFT:I

    const/high16 v4, 0x41900000    # 18.0f

    const/4 v6, 0x0

    invoke-static {v2, v4, v1, v6}, Lru/fokus/tetrad/Ui;->round(IFIF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 119
    const-string v2, "\u0418\u0418-\u043f\u0440\u043e\u0432\u0435\u0440\u043a\u0430 \u0435\u0449\u0451 \u043d\u0435 \u043f\u043e\u0434\u043a\u043b\u044e\u0447\u0435\u043d\u0430"

    const/high16 v4, 0x41800000    # 16.0f

    sget v6, Lru/fokus/tetrad/Ui;->WARN:I

    sget-object v7, Lru/fokus/tetrad/Ui;->BOLD:Landroid/graphics/Typeface;

    invoke-static {p0, v2, v4, v6, v7}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 120
    const-string v2, "\u041d\u0443\u0436\u043d\u043e \u043e\u0434\u0438\u043d \u0440\u0430\u0437 \u0432\u0441\u0442\u0430\u0432\u0438\u0442\u044c \u0431\u0435\u0441\u043f\u043b\u0430\u0442\u043d\u044b\u0439 \u043a\u043b\u044e\u0447 GigaChat \u0432 \u043d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0430\u0445. \u042d\u0442\u043e \u0434\u0435\u043b\u0430\u0435\u0442 \u0440\u043e\u0434\u0438\u0442\u0435\u043b\u044c."

    sget v4, Lru/fokus/tetrad/Ui;->FG:I

    sget-object v6, Lru/fokus/tetrad/Ui;->BODY:Landroid/graphics/Typeface;

    invoke-static {p0, v2, v12, v4, v6}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 121
    const-string v2, "\u041e\u0442\u043a\u0440\u044b\u0442\u044c \u043d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0438"

    invoke-static {p0, v2, v3, v1}, Lru/fokus/tetrad/Ui;->button(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v2

    .line 122
    new-instance v4, Lru/fokus/tetrad/CheckActivity$2;

    invoke-direct {v4, p0}, Lru/fokus/tetrad/CheckActivity$2;-><init>(Lru/fokus/tetrad/CheckActivity;)V

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    invoke-static {}, Lru/fokus/tetrad/Ui;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 128
    iget-object v2, p0, Lru/fokus/tetrad/CheckActivity;->content:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 131
    :cond_0
    iget-object v0, p0, Lru/fokus/tetrad/CheckActivity;->cs:Lru/fokus/tetrad/CheckState;

    iget-boolean v6, v0, Lru/fokus/tetrad/CheckState;->checking:Z

    .line 134
    iget-object v0, p0, Lru/fokus/tetrad/CheckActivity;->cs:Lru/fokus/tetrad/CheckState;

    iget-object v0, v0, Lru/fokus/tetrad/CheckState;->lessonItems:Lorg/json/JSONArray;

    const-string v2, "oral"

    invoke-static {v0, v2}, Lru/fokus/tetrad/Homework;->has(Lorg/json/JSONArray;Ljava/lang/String;)Z

    move-result v0

    .line 135
    iget-object v2, p0, Lru/fokus/tetrad/CheckActivity;->cs:Lru/fokus/tetrad/CheckState;

    iget-object v2, v2, Lru/fokus/tetrad/CheckState;->lessonItems:Lorg/json/JSONArray;

    const-string v4, "written"

    invoke-static {v2, v4}, Lru/fokus/tetrad/Homework;->has(Lorg/json/JSONArray;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lru/fokus/tetrad/CheckActivity;->cs:Lru/fokus/tetrad/CheckState;

    iget-object v2, v2, Lru/fokus/tetrad/CheckState;->lessonItems:Lorg/json/JSONArray;

    const-string v4, "external"

    invoke-static {v2, v4}, Lru/fokus/tetrad/Homework;->has(Lorg/json/JSONArray;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lru/fokus/tetrad/CheckActivity;->cs:Lru/fokus/tetrad/CheckState;

    iget-object v2, v2, Lru/fokus/tetrad/CheckState;->lessonItems:Lorg/json/JSONArray;

    .line 136
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lru/fokus/tetrad/CheckActivity;->cs:Lru/fokus/tetrad/CheckState;

    iget-object v2, v2, Lru/fokus/tetrad/CheckState;->condition:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lru/fokus/tetrad/CheckActivity;->cs:Lru/fokus/tetrad/CheckState;

    iget-object v2, v2, Lru/fokus/tetrad/CheckState;->solution:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lru/fokus/tetrad/CheckActivity;->cs:Lru/fokus/tetrad/CheckState;

    iget-object v2, v2, Lru/fokus/tetrad/CheckState;->report:Lorg/json/JSONObject;

    if-eqz v2, :cond_3

    :cond_1
    move v4, v3

    .line 137
    :goto_0
    if-eqz v0, :cond_7

    move v0, v1

    .line 138
    :goto_1
    iget-object v2, p0, Lru/fokus/tetrad/CheckActivity;->cs:Lru/fokus/tetrad/CheckState;

    iget-object v2, v2, Lru/fokus/tetrad/CheckState;->lessonItems:Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_6

    .line 139
    iget-object v2, p0, Lru/fokus/tetrad/CheckActivity;->cs:Lru/fokus/tetrad/CheckState;

    iget-object v2, v2, Lru/fokus/tetrad/CheckState;->lessonItems:Lorg/json/JSONArray;

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 140
    if-eqz v7, :cond_2

    const-string v2, "oral"

    const-string v8, "kind"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 138
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v4, v1

    .line 136
    goto :goto_0

    .line 141
    :cond_4
    invoke-static {p0}, Lru/fokus/tetrad/Ui;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v8

    .line 142
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u0423\u0441\u0442\u043d\u043e\u0435 \u0437\u0430\u0434\u0430\u043d\u0438\u0435"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v2, "subject"

    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, ""

    :goto_3
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lru/fokus/tetrad/Ui;->title(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 143
    const-string v2, "text"

    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/high16 v9, 0x41700000    # 15.0f

    sget v10, Lru/fokus/tetrad/Ui;->FG:I

    sget-object v11, Lru/fokus/tetrad/Ui;->BODY:Landroid/graphics/Typeface;

    invoke-static {p0, v2, v9, v10, v11}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 144
    const-string v2, "\u041f\u0440\u043e\u0432\u0435\u0440\u0438\u043c, \u043a\u0430\u043a \u0442\u044b \u0432\u044b\u0443\u0447\u0438\u043b: \u043a\u043e\u0440\u043e\u0442\u043a\u0438\u0439 \u043e\u043f\u0440\u043e\u0441 \u0441 \u0432\u0430\u0440\u0438\u0430\u043d\u0442\u0430\u043c\u0438 \u043e\u0442\u0432\u0435\u0442\u0430 \u043f\u043e \u0442\u0435\u043c\u0435 \u0437\u0430\u0434\u0430\u043d\u0438\u044f."

    sget v9, Lru/fokus/tetrad/Ui;->MUTED:I

    sget-object v10, Lru/fokus/tetrad/Ui;->BODY:Landroid/graphics/Typeface;

    invoke-static {p0, v2, v12, v9, v10}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 145
    const-string v2, "\u041d\u0430\u0447\u0430\u0442\u044c \u0431\u043b\u0438\u0446-\u043e\u043f\u0440\u043e\u0441"

    invoke-static {p0, v2, v1, v3}, Lru/fokus/tetrad/Ui;->button(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v2

    .line 146
    new-instance v9, Lru/fokus/tetrad/CheckActivity$3;

    invoke-direct {v9, p0, v7}, Lru/fokus/tetrad/CheckActivity$3;-><init>(Lru/fokus/tetrad/CheckActivity;Lorg/json/JSONObject;)V

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    invoke-static {}, Lru/fokus/tetrad/Ui;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v8, v2, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 148
    iget-object v2, p0, Lru/fokus/tetrad/CheckActivity;->content:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 142
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " \u00b7 "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v10, "subject"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 150
    :cond_6
    if-nez v4, :cond_7

    iget-boolean v0, p0, Lru/fokus/tetrad/CheckActivity;->showWritten:Z

    if-nez v0, :cond_7

    .line 151
    const-string v0, "\u0415\u0441\u0442\u044c \u043f\u0438\u0441\u044c\u043c\u0435\u043d\u043d\u0430\u044f \u0447\u0430\u0441\u0442\u044c? \u041f\u0440\u043e\u0432\u0435\u0440\u0438\u0442\u044c \u043f\u043e \u0444\u043e\u0442\u043e"

    const/4 v2, 0x3

    invoke-static {p0, v0, v2, v1}, Lru/fokus/tetrad/Ui;->button(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v0

    .line 152
    new-instance v2, Lru/fokus/tetrad/CheckActivity$4;

    invoke-direct {v2, p0}, Lru/fokus/tetrad/CheckActivity$4;-><init>(Lru/fokus/tetrad/CheckActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    iget-object v2, p0, Lru/fokus/tetrad/CheckActivity;->content:Landroid/widget/LinearLayout;

    invoke-static {}, Lru/fokus/tetrad/Ui;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 154
    const-string v0, "\u041d\u0430 \u0433\u043b\u0430\u0432\u043d\u0443\u044e"

    invoke-static {p0, v0, v3, v1}, Lru/fokus/tetrad/Ui;->button(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v0

    .line 155
    new-instance v1, Lru/fokus/tetrad/CheckActivity$5;

    invoke-direct {v1, p0}, Lru/fokus/tetrad/CheckActivity$5;-><init>(Lru/fokus/tetrad/CheckActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    iget-object v1, p0, Lru/fokus/tetrad/CheckActivity;->content:Landroid/widget/LinearLayout;

    invoke-static {}, Lru/fokus/tetrad/Ui;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 242
    :goto_4
    return-void

    .line 162
    :cond_7
    invoke-static {p0}, Lru/fokus/tetrad/Ui;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 163
    const-string v4, "1"

    const-string v7, "\u0417\u0430\u0434\u0430\u043d\u0438\u0435"

    iget-object v0, p0, Lru/fokus/tetrad/CheckActivity;->cs:Lru/fokus/tetrad/CheckState;

    iget-object v0, v0, Lru/fokus/tetrad/CheckState;->condition:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lru/fokus/tetrad/CheckActivity;->cs:Lru/fokus/tetrad/CheckState;

    iget-object v0, v0, Lru/fokus/tetrad/CheckState;->task:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    :cond_8
    move v0, v3

    :goto_5
    invoke-direct {p0, v4, v7, v0}, Lru/fokus/tetrad/CheckActivity;->stepTitle(Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 164
    iget-object v0, p0, Lru/fokus/tetrad/CheckActivity;->cs:Lru/fokus/tetrad/CheckState;

    iget-object v0, v0, Lru/fokus/tetrad/CheckState;->task:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 165
    const/4 v0, 0x4

    invoke-static {p0, v0}, Lru/fokus/tetrad/Ui;->col(Landroid/content/Context;I)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 166
    invoke-static {v12}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v4

    const/high16 v7, 0x41200000    # 10.0f

    invoke-static {v7}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v7

    invoke-static {v12}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v8

    const/high16 v9, 0x41200000    # 10.0f

    invoke-static {v9}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v9

    invoke-virtual {v0, v4, v7, v8, v9}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 167
    sget v4, Lru/fokus/tetrad/Ui;->INK_SOFT:I

    const/high16 v7, 0x41400000    # 12.0f

    const/4 v8, 0x0

    invoke-static {v4, v7, v1, v8}, Lru/fokus/tetrad/Ui;->round(IFIF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 168
    const-string v4, "\u0422\u0435\u043a\u0441\u0442 \u0437\u0430\u0434\u0430\u043d\u0438\u044f"

    const/high16 v7, 0x41500000    # 13.0f

    sget v8, Lru/fokus/tetrad/Ui;->INK:I

    sget-object v9, Lru/fokus/tetrad/Ui;->BOLD:Landroid/graphics/Typeface;

    invoke-static {p0, v4, v7, v8, v9}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 169
    iget-object v4, p0, Lru/fokus/tetrad/CheckActivity;->cs:Lru/fokus/tetrad/CheckState;

    iget-object v4, v4, Lru/fokus/tetrad/CheckState;->task:Ljava/lang/String;

    const/high16 v7, 0x41700000    # 15.0f

    sget v8, Lru/fokus/tetrad/Ui;->FG:I

    sget-object v9, Lru/fokus/tetrad/Ui;->BODY:Landroid/graphics/Typeface;

    invoke-static {p0, v4, v7, v8, v9}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 170
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 172
    :cond_9
    iget-object v0, p0, Lru/fokus/tetrad/CheckActivity;->cs:Lru/fokus/tetrad/CheckState;

    iget-object v0, v0, Lru/fokus/tetrad/CheckState;->condition:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 173
    const-string v0, "\u0421\u0444\u043e\u0442\u043e\u0433\u0440\u0430\u0444\u0438\u0440\u0443\u0439 \u0443\u0441\u043b\u043e\u0432\u0438\u0435 \u0438\u0437 \u0443\u0447\u0435\u0431\u043d\u0438\u043a\u0430 \u2014 \u0442\u043e\u0433\u0434\u0430 \u0418\u0418 \u043f\u0440\u043e\u0432\u0435\u0440\u0438\u0442 \u0438\u043c\u0435\u043d\u043d\u043e \u0442\u0432\u043e\u044e \u0437\u0430\u0434\u0430\u0447\u0443. \u041c\u043e\u0436\u043d\u043e \u043f\u0440\u043e\u043f\u0443\u0441\u0442\u0438\u0442\u044c: \u0442\u043e\u0433\u0434\u0430 \u043f\u0440\u043e\u0432\u0435\u0440\u044f\u0442\u0441\u044f \u0442\u043e\u043b\u044c\u043a\u043e \u0432\u044b\u0447\u0438\u0441\u043b\u0435\u043d\u0438\u044f \u0438 \u043f\u0440\u0430\u0432\u043e\u043f\u0438\u0441\u0430\u043d\u0438\u0435."

    sget v4, Lru/fokus/tetrad/Ui;->MUTED:I

    sget-object v7, Lru/fokus/tetrad/Ui;->BODY:Landroid/graphics/Typeface;

    invoke-static {p0, v0, v12, v4, v7}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 174
    if-nez v6, :cond_a

    const-string v0, "\u0421\u0444\u043e\u0442\u043e\u0433\u0440\u0430\u0444\u0438\u0440\u043e\u0432\u0430\u0442\u044c"

    const/16 v4, 0xb

    invoke-static {p0, v0, v4, v14}, Lru/fokus/tetrad/Photos;->addMore(Landroid/app/Activity;Ljava/lang/String;II)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 181
    :cond_a
    :goto_6
    iget-object v0, p0, Lru/fokus/tetrad/CheckActivity;->content:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 184
    invoke-static {p0}, Lru/fokus/tetrad/Ui;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 185
    const-string v4, "2"

    const-string v7, "\u0420\u0435\u0448\u0435\u043d\u0438\u0435"

    iget-object v0, p0, Lru/fokus/tetrad/CheckActivity;->cs:Lru/fokus/tetrad/CheckState;

    iget-object v0, v0, Lru/fokus/tetrad/CheckState;->solution:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15

    move v0, v3

    :goto_7
    invoke-direct {p0, v4, v7, v0}, Lru/fokus/tetrad/CheckActivity;->stepTitle(Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 186
    iget-object v0, p0, Lru/fokus/tetrad/CheckActivity;->cs:Lru/fokus/tetrad/CheckState;

    iget-object v0, v0, Lru/fokus/tetrad/CheckState;->solution:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 187
    const-string v0, "\u0421\u0444\u043e\u0442\u043e\u0433\u0440\u0430\u0444\u0438\u0440\u0443\u0439 \u0440\u0435\u0448\u0435\u043d\u0438\u0435"

    const-string v4, "\u0412\u0441\u044e \u0441\u0442\u0440\u0430\u043d\u0438\u0446\u0443 \u0442\u0435\u0442\u0440\u0430\u0434\u0438, \u0440\u043e\u0432\u043d\u043e \u0438 \u043f\u0440\u0438 \u0445\u043e\u0440\u043e\u0448\u0435\u043c \u0441\u0432\u0435\u0442\u0435. \u0420\u0435\u0448\u0435\u043d\u0438\u0435 \u043d\u0430 \u043d\u0435\u0441\u043a\u043e\u043b\u044c\u043a\u0438\u0445 \u0441\u0442\u0440\u0430\u043d\u0438\u0446\u0430\u0445 \u2014 \u0434\u043e\u0431\u0430\u0432\u044c \u0432\u0441\u0435."

    const/16 v6, 0x15

    const/16 v7, 0x16

    invoke-static {p0, v0, v4, v6, v7}, Lru/fokus/tetrad/Photos;->dropZone(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;II)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 194
    :cond_b
    :goto_8
    iget-object v0, p0, Lru/fokus/tetrad/CheckActivity;->content:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 197
    const/16 v0, 0xa

    invoke-static {p0, v0}, Lru/fokus/tetrad/Ui;->row(Landroid/content/Context;I)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 198
    iget-object v0, p0, Lru/fokus/tetrad/CheckActivity;->cs:Lru/fokus/tetrad/CheckState;

    iget-boolean v0, v0, Lru/fokus/tetrad/CheckState;->checking:Z

    if-eqz v0, :cond_18

    const-string v0, "\u041f\u0440\u043e\u0432\u0435\u0440\u044f\u044e\u2026"

    :goto_9
    invoke-static {p0, v0, v1, v3}, Lru/fokus/tetrad/Ui;->button(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v4

    .line 199
    iget-object v0, p0, Lru/fokus/tetrad/CheckActivity;->cs:Lru/fokus/tetrad/CheckState;

    iget-boolean v0, v0, Lru/fokus/tetrad/CheckState;->checking:Z

    if-nez v0, :cond_1a

    iget-object v0, p0, Lru/fokus/tetrad/CheckActivity;->cs:Lru/fokus/tetrad/CheckState;

    iget-object v0, v0, Lru/fokus/tetrad/CheckState;->solution:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lru/fokus/tetrad/CheckActivity;->store:Lru/fokus/tetrad/Store;

    invoke-virtual {v0}, Lru/fokus/tetrad/Store;->aiReady()Z

    move-result v0

    if-eqz v0, :cond_1a

    move v0, v3

    :goto_a
    invoke-static {v4, v0}, Lru/fokus/tetrad/Ui;->setEnabled(Landroid/view/View;Z)V

    .line 200
    new-instance v0, Lru/fokus/tetrad/CheckActivity$8;

    invoke-direct {v0, p0}, Lru/fokus/tetrad/CheckActivity$8;-><init>(Lru/fokus/tetrad/CheckActivity;)V

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    invoke-static {v13}, Lru/fokus/tetrad/Ui;->weight(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 206
    iget-object v0, p0, Lru/fokus/tetrad/CheckActivity;->cs:Lru/fokus/tetrad/CheckState;

    iget-boolean v0, v0, Lru/fokus/tetrad/CheckState;->checking:Z

    if-eqz v0, :cond_c

    .line 207
    const-string v0, "\u0421\u0442\u043e\u043f"

    invoke-static {p0, v0, v3, v3}, Lru/fokus/tetrad/Ui;->button(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v0

    .line 208
    new-instance v4, Lru/fokus/tetrad/CheckActivity$9;

    invoke-direct {v4, p0}, Lru/fokus/tetrad/CheckActivity$9;-><init>(Lru/fokus/tetrad/CheckActivity;)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 211
    :cond_c
    iget-object v0, p0, Lru/fokus/tetrad/CheckActivity;->content:Landroid/widget/LinearLayout;

    invoke-static {}, Lru/fokus/tetrad/Ui;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 212
    iget-object v0, p0, Lru/fokus/tetrad/CheckActivity;->cs:Lru/fokus/tetrad/CheckState;

    iget-object v0, v0, Lru/fokus/tetrad/CheckState;->solution:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lru/fokus/tetrad/CheckActivity;->cs:Lru/fokus/tetrad/CheckState;

    iget-boolean v0, v0, Lru/fokus/tetrad/CheckState;->checking:Z

    if-nez v0, :cond_d

    .line 213
    const-string v0, "\u0421\u043d\u0430\u0447\u0430\u043b\u0430 \u0434\u043e\u0431\u0430\u0432\u044c \u0444\u043e\u0442\u043e \u0440\u0435\u0448\u0435\u043d\u0438\u044f \u0432 \u0448\u0430\u0433\u0435 2."

    sget v2, Lru/fokus/tetrad/Ui;->MUTED:I

    sget-object v4, Lru/fokus/tetrad/Ui;->BODY:Landroid/graphics/Typeface;

    invoke-static {p0, v0, v12, v2, v4}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v0

    .line 214
    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 215
    iget-object v2, p0, Lru/fokus/tetrad/CheckActivity;->content:Landroid/widget/LinearLayout;

    invoke-static {}, Lru/fokus/tetrad/Ui;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 218
    :cond_d
    iget-object v0, p0, Lru/fokus/tetrad/CheckActivity;->cs:Lru/fokus/tetrad/CheckState;

    iget-boolean v0, v0, Lru/fokus/tetrad/CheckState;->checking:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lru/fokus/tetrad/CheckActivity;->cs:Lru/fokus/tetrad/CheckState;

    iget-object v0, v0, Lru/fokus/tetrad/CheckState;->status:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    .line 219
    :cond_e
    const/16 v0, 0xa

    invoke-static {p0, v0}, Lru/fokus/tetrad/Ui;->row(Landroid/content/Context;I)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 220
    iget-object v0, p0, Lru/fokus/tetrad/CheckActivity;->cs:Lru/fokus/tetrad/CheckState;

    iget-boolean v0, v0, Lru/fokus/tetrad/CheckState;->checking:Z

    if-eqz v0, :cond_f

    new-instance v0, Landroid/widget/ProgressBar;

    invoke-direct {v0, p0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x41b00000    # 22.0f

    invoke-static {v6}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v6

    const/high16 v7, 0x41b00000    # 22.0f

    invoke-static {v7}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v7

    invoke-direct {v2, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 221
    :cond_f
    iget-object v0, p0, Lru/fokus/tetrad/CheckActivity;->cs:Lru/fokus/tetrad/CheckState;

    iget-object v6, v0, Lru/fokus/tetrad/CheckState;->status:Ljava/lang/String;

    iget-object v0, p0, Lru/fokus/tetrad/CheckActivity;->cs:Lru/fokus/tetrad/CheckState;

    iget-boolean v0, v0, Lru/fokus/tetrad/CheckState;->statusError:Z

    if-eqz v0, :cond_1b

    sget v0, Lru/fokus/tetrad/Ui;->RED:I

    :goto_b
    iget-object v2, p0, Lru/fokus/tetrad/CheckActivity;->cs:Lru/fokus/tetrad/CheckState;

    iget-boolean v2, v2, Lru/fokus/tetrad/CheckState;->statusError:Z

    if-eqz v2, :cond_1c

    sget-object v2, Lru/fokus/tetrad/Ui;->BOLD:Landroid/graphics/Typeface;

    :goto_c
    invoke-static {p0, v6, v12, v0, v2}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v13}, Lru/fokus/tetrad/Ui;->weight(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v4, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 222
    iget-object v0, p0, Lru/fokus/tetrad/CheckActivity;->content:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 225
    :cond_10
    const/4 v0, 0x0

    iput-object v0, p0, Lru/fokus/tetrad/CheckActivity;->reportAnchor:Landroid/view/View;

    .line 226
    iget-object v0, p0, Lru/fokus/tetrad/CheckActivity;->cs:Lru/fokus/tetrad/CheckState;

    iget-object v0, v0, Lru/fokus/tetrad/CheckState;->report:Lorg/json/JSONObject;

    if-eqz v0, :cond_11

    .line 227
    invoke-static {p0}, Lru/fokus/tetrad/Ui;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 228
    iput-object v0, p0, Lru/fokus/tetrad/CheckActivity;->reportAnchor:Landroid/view/View;

    .line 229
    iget-object v2, p0, Lru/fokus/tetrad/CheckActivity;->cs:Lru/fokus/tetrad/CheckState;

    iget-object v2, v2, Lru/fokus/tetrad/CheckState;->report:Lorg/json/JSONObject;

    invoke-direct {p0, v0, v2}, Lru/fokus/tetrad/CheckActivity;->renderReport(Landroid/widget/LinearLayout;Lorg/json/JSONObject;)V

    .line 230
    iget-object v2, p0, Lru/fokus/tetrad/CheckActivity;->content:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 231
    iget-object v0, p0, Lru/fokus/tetrad/CheckActivity;->content:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lru/fokus/tetrad/CheckActivity;->chatCard()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 232
    const-string v0, "\u0413\u043e\u0442\u043e\u0432\u043e, \u043d\u0430 \u0433\u043b\u0430\u0432\u043d\u0443\u044e"

    invoke-static {p0, v0, v3, v1}, Lru/fokus/tetrad/Ui;->button(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v0

    .line 233
    new-instance v1, Lru/fokus/tetrad/CheckActivity$10;

    invoke-direct {v1, p0}, Lru/fokus/tetrad/CheckActivity$10;-><init>(Lru/fokus/tetrad/CheckActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 234
    iget-object v1, p0, Lru/fokus/tetrad/CheckActivity;->content:Landroid/widget/LinearLayout;

    invoke-static {}, Lru/fokus/tetrad/Ui;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 238
    :cond_11
    iget-object v0, p0, Lru/fokus/tetrad/CheckActivity;->scroll:Landroid/widget/ScrollView;

    new-instance v1, Lru/fokus/tetrad/CheckActivity$11;

    invoke-direct {v1, p0, v5}, Lru/fokus/tetrad/CheckActivity$11;-><init>(Lru/fokus/tetrad/CheckActivity;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_4

    :cond_12
    move v0, v1

    .line 163
    goto/16 :goto_5

    .line 176
    :cond_13
    iget-object v0, p0, Lru/fokus/tetrad/CheckActivity;->cs:Lru/fokus/tetrad/CheckState;

    iget-object v4, v0, Lru/fokus/tetrad/CheckState;->condition:Ljava/util/List;

    const/16 v7, 0x60

    if-eqz v6, :cond_14

    const/4 v0, 0x0

    :goto_d
    invoke-static {p0, v4, v7, v0}, Lru/fokus/tetrad/Photos;->strip(Landroid/app/Activity;Ljava/util/List;ILru/fokus/tetrad/Photos$Remove;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 179
    if-nez v6, :cond_a

    iget-object v0, p0, Lru/fokus/tetrad/CheckActivity;->cs:Lru/fokus/tetrad/CheckState;

    iget-object v0, v0, Lru/fokus/tetrad/CheckState;->condition:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v4, 0x5

    if-ge v0, v4, :cond_a

    const-string v0, "\u0415\u0449\u0451 \u0444\u043e\u0442\u043e \u0437\u0430\u0434\u0430\u043d\u0438\u044f"

    const/16 v4, 0xb

    invoke-static {p0, v0, v4, v14}, Lru/fokus/tetrad/Photos;->addMore(Landroid/app/Activity;Ljava/lang/String;II)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_6

    .line 176
    :cond_14
    new-instance v0, Lru/fokus/tetrad/CheckActivity$6;

    invoke-direct {v0, p0}, Lru/fokus/tetrad/CheckActivity$6;-><init>(Lru/fokus/tetrad/CheckActivity;)V

    goto :goto_d

    :cond_15
    move v0, v1

    .line 185
    goto/16 :goto_7

    .line 189
    :cond_16
    iget-object v0, p0, Lru/fokus/tetrad/CheckActivity;->cs:Lru/fokus/tetrad/CheckState;

    iget-object v4, v0, Lru/fokus/tetrad/CheckState;->solution:Ljava/util/List;

    const/16 v7, 0x60

    if-eqz v6, :cond_17

    const/4 v0, 0x0

    :goto_e
    invoke-static {p0, v4, v7, v0}, Lru/fokus/tetrad/Photos;->strip(Landroid/app/Activity;Ljava/util/List;ILru/fokus/tetrad/Photos$Remove;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 192
    if-nez v6, :cond_b

    iget-object v0, p0, Lru/fokus/tetrad/CheckActivity;->cs:Lru/fokus/tetrad/CheckState;

    iget-object v0, v0, Lru/fokus/tetrad/CheckState;->solution:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v4, 0x5

    if-ge v0, v4, :cond_b

    const-string v0, "\u0415\u0449\u0451 \u0441\u0442\u0440\u0430\u043d\u0438\u0446\u0430"

    const/16 v4, 0x15

    const/16 v6, 0x16

    invoke-static {p0, v0, v4, v6}, Lru/fokus/tetrad/Photos;->addMore(Landroid/app/Activity;Ljava/lang/String;II)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_8

    .line 189
    :cond_17
    new-instance v0, Lru/fokus/tetrad/CheckActivity$7;

    invoke-direct {v0, p0}, Lru/fokus/tetrad/CheckActivity$7;-><init>(Lru/fokus/tetrad/CheckActivity;)V

    goto :goto_e

    .line 198
    :cond_18
    iget-object v0, p0, Lru/fokus/tetrad/CheckActivity;->cs:Lru/fokus/tetrad/CheckState;

    iget-object v0, v0, Lru/fokus/tetrad/CheckState;->report:Lorg/json/JSONObject;

    if-eqz v0, :cond_19

    const-string v0, "\u041f\u0440\u043e\u0432\u0435\u0440\u0438\u0442\u044c \u0435\u0449\u0451 \u0440\u0430\u0437"

    goto/16 :goto_9

    :cond_19
    const-string v0, "\u041f\u0440\u043e\u0432\u0435\u0440\u0438\u0442\u044c"

    goto/16 :goto_9

    :cond_1a
    move v0, v1

    .line 199
    goto/16 :goto_a

    .line 221
    :cond_1b
    sget v0, Lru/fokus/tetrad/Ui;->MUTED:I

    goto/16 :goto_b

    :cond_1c
    sget-object v2, Lru/fokus/tetrad/Ui;->BODY:Landroid/graphics/Typeface;

    goto/16 :goto_c
.end method

.method private renderReport(Landroid/widget/LinearLayout;Lorg/json/JSONObject;)V
    .locals 12

    .prologue
    const/4 v3, 0x1

    const/high16 v11, 0x41700000    # 15.0f

    const/high16 v10, 0x41600000    # 14.0f

    const/high16 v9, 0x41400000    # 12.0f

    const/4 v1, 0x0

    .line 293
    const/16 v0, 0x10

    invoke-static {p0, v0}, Lru/fokus/tetrad/Ui;->row(Landroid/content/Context;I)Landroid/widget/LinearLayout;

    move-result-object v5

    .line 294
    const/16 v0, 0x30

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 295
    const-string v0, "grade"

    const-wide/16 v6, 0x0

    invoke-virtual {p2, v0, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v6, v6

    .line 296
    const/4 v0, 0x2

    if-lt v6, v0, :cond_5

    const/4 v0, 0x5

    if-gt v6, v0, :cond_5

    move v4, v3

    .line 297
    :goto_0
    if-nez v4, :cond_6

    sget v0, Lru/fokus/tetrad/Ui;->MUTED:I

    move v2, v0

    .line 298
    :goto_1
    if-eqz v4, :cond_9

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    const/high16 v4, 0x42380000    # 46.0f

    sget-object v6, Lru/fokus/tetrad/Ui;->HAND:Landroid/graphics/Typeface;

    invoke-static {p0, v0, v4, v2, v6}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v0

    .line 299
    const/16 v4, 0x11

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 300
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 301
    new-instance v4, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 302
    invoke-virtual {v4, v3}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 303
    const/high16 v6, 0x40200000    # 2.5f

    invoke-static {v6}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v6

    invoke-virtual {v4, v6, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 304
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 305
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x42880000    # 68.0f

    invoke-static {v4}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v4

    const/high16 v6, 0x42880000    # 68.0f

    invoke-static {v6}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v6

    invoke-direct {v2, v4, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 306
    const/4 v0, 0x4

    invoke-static {p0, v0}, Lru/fokus/tetrad/Ui;->col(Landroid/content/Context;I)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "\u041e\u0446\u0435\u043d\u043a\u0430"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 308
    iget-object v4, p0, Lru/fokus/tetrad/CheckActivity;->cs:Lru/fokus/tetrad/CheckState;

    iget-object v4, v4, Lru/fokus/tetrad/CheckState;->reportSubject:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, " \u00b7 "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lru/fokus/tetrad/CheckActivity;->cs:Lru/fokus/tetrad/CheckState;

    iget-object v6, v6, Lru/fokus/tetrad/CheckState;->reportSubject:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    :cond_0
    const-string v4, "score"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "score"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, " \u00b7 "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "score"

    invoke-virtual {p2, v6}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "% \u0432\u0435\u0440\u043d\u043e"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/high16 v4, 0x41500000    # 13.0f

    sget v6, Lru/fokus/tetrad/Ui;->MUTED:I

    sget-object v7, Lru/fokus/tetrad/Ui;->MEDIUM:Landroid/graphics/Typeface;

    invoke-static {p0, v0, v4, v6, v7}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 311
    const-string v0, "summary"

    invoke-static {p2, v0}, Lru/fokus/tetrad/CheckActivity;->str(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 312
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v0, "\u041f\u0440\u043e\u0432\u0435\u0440\u043a\u0430 \u0433\u043e\u0442\u043e\u0432\u0430"

    :cond_2
    const/high16 v4, 0x41800000    # 16.0f

    sget v6, Lru/fokus/tetrad/Ui;->FG:I

    sget-object v7, Lru/fokus/tetrad/Ui;->BOLD:Landroid/graphics/Typeface;

    invoke-static {p0, v0, v4, v6, v7}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 313
    const-string v0, "praise"

    invoke-static {p2, v0}, Lru/fokus/tetrad/CheckActivity;->str(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 314
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    sget v4, Lru/fokus/tetrad/Ui;->OK:I

    sget-object v6, Lru/fokus/tetrad/Ui;->BODY:Landroid/graphics/Typeface;

    invoke-static {p0, v0, v11, v4, v6}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 315
    :cond_3
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Lru/fokus/tetrad/Ui;->weight(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v5, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 316
    invoke-virtual {p1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 318
    const-string v0, "tasks"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 319
    const-string v0, "condition_warning"

    invoke-static {p2, v0}, Lru/fokus/tetrad/CheckActivity;->str(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 321
    if-eqz v4, :cond_a

    move v0, v1

    move v2, v1

    :goto_3
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v0, v6, :cond_b

    .line 322
    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 323
    if-eqz v6, :cond_4

    const-string v7, "none"

    const-string v8, "condition_source"

    invoke-static {v6, v8}, Lru/fokus/tetrad/CheckActivity;->str(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    move v2, v3

    .line 321
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    move v4, v1

    .line 296
    goto/16 :goto_0

    .line 297
    :cond_6
    const/4 v0, 0x4

    if-lt v6, v0, :cond_7

    sget v0, Lru/fokus/tetrad/Ui;->OK:I

    move v2, v0

    goto/16 :goto_1

    :cond_7
    const/4 v0, 0x3

    if-ne v6, v0, :cond_8

    sget v0, Lru/fokus/tetrad/Ui;->WARN:I

    move v2, v0

    goto/16 :goto_1

    :cond_8
    sget v0, Lru/fokus/tetrad/Ui;->RED:I

    move v2, v0

    goto/16 :goto_1

    .line 298
    :cond_9
    const-string v0, "\u2014"

    goto/16 :goto_2

    :cond_a
    move v2, v1

    .line 325
    :cond_b
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    if-eqz v2, :cond_d

    .line 326
    :cond_c
    const/4 v0, 0x4

    invoke-static {p0, v0}, Lru/fokus/tetrad/Ui;->col(Landroid/content/Context;I)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 327
    invoke-static {v10}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v2

    invoke-static {v9}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v3

    invoke-static {v10}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v5

    invoke-static {v9}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v6

    invoke-virtual {v0, v2, v3, v5, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 328
    sget v2, Lru/fokus/tetrad/Ui;->WARN_SOFT:I

    const/4 v3, 0x0

    invoke-static {v2, v9, v1, v3}, Lru/fokus/tetrad/Ui;->round(IFIF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 329
    const-string v2, "\u0418\u0418 \u043d\u0435 \u0432\u0438\u0434\u0435\u043b \u0443\u0441\u043b\u043e\u0432\u0438\u044f"

    sget v3, Lru/fokus/tetrad/Ui;->WARN:I

    sget-object v5, Lru/fokus/tetrad/Ui;->BOLD:Landroid/graphics/Typeface;

    invoke-static {p0, v2, v11, v3, v5}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 330
    const-string v2, "\u041f\u0440\u043e\u0432\u0435\u0440\u0435\u043d\u044b \u0442\u043e\u043b\u044c\u043a\u043e \u0432\u044b\u0447\u0438\u0441\u043b\u0435\u043d\u0438\u044f \u0438 \u0445\u043e\u0434 \u0440\u0435\u0448\u0435\u043d\u0438\u044f. \u0414\u043e\u0431\u0430\u0432\u044c \u0444\u043e\u0442\u043e \u0437\u0430\u0434\u0430\u043d\u0438\u044f \u0432 \u0448\u0430\u0433\u0435 1 \u0438 \u043d\u0430\u0436\u043c\u0438 \u00ab\u041f\u0440\u043e\u0432\u0435\u0440\u0438\u0442\u044c \u0435\u0449\u0451 \u0440\u0430\u0437\u00bb."

    sget v3, Lru/fokus/tetrad/Ui;->FG:I

    sget-object v5, Lru/fokus/tetrad/Ui;->BODY:Landroid/graphics/Typeface;

    invoke-static {p0, v2, v10, v3, v5}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 331
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 334
    :cond_d
    if-eqz v4, :cond_f

    move v0, v1

    :goto_4
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_f

    .line 335
    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 336
    if-eqz v2, :cond_e

    invoke-direct {p0, v2}, Lru/fokus/tetrad/CheckActivity;->taskCard(Lorg/json/JSONObject;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 334
    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 339
    :cond_f
    const-string v0, "next_steps"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 340
    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_12

    .line 341
    const/4 v2, 0x6

    invoke-static {p0, v2}, Lru/fokus/tetrad/Ui;->col(Landroid/content/Context;I)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 342
    invoke-static {v10}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v3

    invoke-static {v9}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v4

    invoke-static {v10}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v5

    invoke-static {v9}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 343
    sget v3, Lru/fokus/tetrad/Ui;->INK_SOFT:I

    const/4 v4, 0x0

    invoke-static {v3, v9, v1, v4}, Lru/fokus/tetrad/Ui;->round(IFIF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 344
    const-string v3, "\u0427\u0442\u043e \u043f\u043e\u0432\u0442\u043e\u0440\u0438\u0442\u044c"

    sget v4, Lru/fokus/tetrad/Ui;->FG:I

    sget-object v5, Lru/fokus/tetrad/Ui;->BOLD:Landroid/graphics/Typeface;

    invoke-static {p0, v3, v11, v4, v5}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 345
    :goto_5
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_11

    .line 346
    const-string v3, ""

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 347
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_10

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u2022  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Lru/fokus/tetrad/Ui;->FG:I

    sget-object v5, Lru/fokus/tetrad/Ui;->BODY:Landroid/graphics/Typeface;

    invoke-static {p0, v3, v11, v4, v5}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 345
    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 349
    :cond_11
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 351
    :cond_12
    return-void
.end method

.method private send(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 487
    iget-object v0, p0, Lru/fokus/tetrad/CheckActivity;->cs:Lru/fokus/tetrad/CheckState;

    iget-boolean v0, v0, Lru/fokus/tetrad/CheckState;->chatBusy:Z

    if-eqz v0, :cond_0

    const-string v0, "\u041f\u043e\u0434\u043e\u0436\u0434\u0438 \u043e\u0442\u0432\u0435\u0442\u0430 \u043d\u0430 \u043f\u0440\u043e\u0448\u043b\u044b\u0439 \u0432\u043e\u043f\u0440\u043e\u0441"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 491
    :goto_0
    return-void

    .line 488
    :cond_0
    iget-object v0, p0, Lru/fokus/tetrad/CheckActivity;->cs:Lru/fokus/tetrad/CheckState;

    invoke-virtual {p0}, Lru/fokus/tetrad/CheckActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lru/fokus/tetrad/CheckState;->ask(Landroid/content/Context;Ljava/lang/String;)V

    .line 489
    invoke-direct {p0}, Lru/fokus/tetrad/CheckActivity;->render()V

    .line 490
    iget-object v0, p0, Lru/fokus/tetrad/CheckActivity;->scroll:Landroid/widget/ScrollView;

    new-instance v1, Lru/fokus/tetrad/CheckActivity$17;

    invoke-direct {v1, p0}, Lru/fokus/tetrad/CheckActivity$17;-><init>(Lru/fokus/tetrad/CheckActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private stepTitle(Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/View;
    .locals 7

    .prologue
    const/high16 v6, 0x41f00000    # 30.0f

    .line 245
    const/16 v0, 0xa

    invoke-static {p0, v0}, Lru/fokus/tetrad/Ui;->row(Landroid/content/Context;I)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 246
    if-eqz p3, :cond_0

    const-string p1, "\u2713"

    :cond_0
    const/high16 v2, 0x41700000    # 15.0f

    if-eqz p3, :cond_1

    sget v0, Lru/fokus/tetrad/Ui;->ON_INK:I

    :goto_0
    sget-object v3, Lru/fokus/tetrad/Ui;->BOLD:Landroid/graphics/Typeface;

    invoke-static {p0, p1, v2, v0, v3}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v2

    .line 247
    const/16 v0, 0x11

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 248
    if-eqz p3, :cond_2

    sget v0, Lru/fokus/tetrad/Ui;->OK:I

    :goto_1
    const v3, 0x4479c000    # 999.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v0, v3, v4, v5}, Lru/fokus/tetrad/Ui;->round(IFIF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 249
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {v6}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v3

    invoke-static {v6}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v4

    invoke-direct {v0, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 250
    invoke-static {p0, p2}, Lru/fokus/tetrad/Ui;->title(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2}, Lru/fokus/tetrad/Ui;->weight(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 251
    return-object v1

    .line 246
    :cond_1
    sget v0, Lru/fokus/tetrad/Ui;->INK:I

    goto :goto_0

    .line 248
    :cond_2
    sget v0, Lru/fokus/tetrad/Ui;->INK_SOFT:I

    goto :goto_1
.end method

.method private static str(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 273
    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, ""

    .line 274
    :goto_0
    return-object v0

    :cond_1
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private taskCard(Lorg/json/JSONObject;)Landroid/view/View;
    .locals 12

    .prologue
    .line 354
    const-string v0, "status"

    invoke-static {p1, v0}, Lru/fokus/tetrad/CheckActivity;->str(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 355
    const-string v1, "ok"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "error"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "partial"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "partial"

    .line 356
    :cond_0
    const-string v1, "ok"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    sget v1, Lru/fokus/tetrad/Ui;->OK:I

    .line 357
    :goto_0
    const-string v2, "ok"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    sget v2, Lru/fokus/tetrad/Ui;->OK_SOFT:I

    .line 358
    :goto_1
    const/16 v3, 0xa

    invoke-static {p0, v3}, Lru/fokus/tetrad/Ui;->col(Landroid/content/Context;I)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 359
    const/high16 v3, 0x41600000    # 14.0f

    invoke-static {v3}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v3

    const/high16 v5, 0x41400000    # 12.0f

    invoke-static {v5}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v5

    const/high16 v6, 0x41600000    # 14.0f

    invoke-static {v6}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v6

    const/high16 v7, 0x41600000    # 14.0f

    invoke-static {v7}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v7

    invoke-virtual {v4, v3, v5, v6, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 360
    sget v3, Lru/fokus/tetrad/Ui;->BG:I

    const/high16 v5, 0x41600000    # 14.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v3, v5, v6, v7}, Lru/fokus/tetrad/Ui;->round(IFIF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 362
    const/16 v3, 0xa

    invoke-static {p0, v3}, Lru/fokus/tetrad/Ui;->row(Landroid/content/Context;I)Landroid/widget/LinearLayout;

    move-result-object v5

    .line 363
    const/16 v3, 0x30

    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 364
    const-string v3, "ok"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    const-string v3, "\u2713"

    :goto_2
    const/high16 v6, 0x41700000    # 15.0f

    sget-object v7, Lru/fokus/tetrad/Ui;->BOLD:Landroid/graphics/Typeface;

    invoke-static {p0, v3, v6, v1, v7}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v3

    .line 365
    const/16 v6, 0x11

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 366
    const v6, 0x4479c000    # 999.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v2, v6, v7, v8}, Lru/fokus/tetrad/Ui;->round(IFIF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 367
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x41e00000    # 28.0f

    invoke-static {v6}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v6

    const/high16 v7, 0x41e00000    # 28.0f

    invoke-static {v7}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v7

    invoke-direct {v2, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 368
    const/4 v2, 0x4

    invoke-static {p0, v2}, Lru/fokus/tetrad/Ui;->col(Landroid/content/Context;I)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 369
    const-string v2, "title"

    invoke-static {p1, v2}, Lru/fokus/tetrad/CheckActivity;->str(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 370
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v2, "\u0417\u0430\u0434\u0430\u043d\u0438\u0435"

    :cond_1
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v2, "ok"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const-string v2, " \u2014 \u0432\u0435\u0440\u043d\u043e"

    :goto_3
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/high16 v6, 0x41800000    # 16.0f

    sget v7, Lru/fokus/tetrad/Ui;->FG:I

    sget-object v8, Lru/fokus/tetrad/Ui;->BOLD:Landroid/graphics/Typeface;

    invoke-static {p0, v2, v6, v7, v8}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 371
    const-string v2, "condition"

    invoke-static {p1, v2}, Lru/fokus/tetrad/CheckActivity;->str(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v2, "condition_source"

    invoke-static {p1, v2}, Lru/fokus/tetrad/CheckActivity;->str(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 372
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    .line 373
    const-string v7, "photo"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    const-string v2, "\u0441 \u0444\u043e\u0442\u043e"

    .line 374
    :goto_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u0423\u0441\u043b\u043e\u0432\u0438\u0435"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_11

    const-string v2, ""

    :goto_5
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, ": "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x0

    invoke-direct {p0, v2, v6, v7}, Lru/fokus/tetrad/CheckActivity;->labeled(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v2

    const/high16 v6, 0x41500000    # 13.0f

    sget v7, Lru/fokus/tetrad/Ui;->MUTED:I

    sget-object v8, Lru/fokus/tetrad/Ui;->BODY:Landroid/graphics/Typeface;

    invoke-static {p0, v2, v6, v7, v8}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 376
    :cond_2
    const-string v2, "student_answer"

    invoke-static {p1, v2}, Lru/fokus/tetrad/CheckActivity;->str(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v6, "correct_answer"

    invoke-static {p1, v6}, Lru/fokus/tetrad/CheckActivity;->str(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 377
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4

    .line 378
    new-instance v7, Landroid/text/SpannableStringBuilder;

    const-string v8, "\u0422\u0432\u043e\u0439 \u043e\u0442\u0432\u0435\u0442: "

    invoke-direct {v7, v8}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 379
    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    .line 380
    invoke-virtual {v7, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 381
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    sget v9, Lru/fokus/tetrad/Ui;->FG:I

    invoke-direct {v2, v9}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v9

    const/4 v10, 0x0

    invoke-virtual {v7, v2, v8, v9, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 382
    const-string v2, "ok"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v2, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v2}, Landroid/text/style/StrikethroughSpan;-><init>()V

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v9

    const/4 v10, 0x0

    invoke-virtual {v7, v2, v8, v9, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 383
    :cond_3
    const/high16 v2, 0x41600000    # 14.0f

    sget v8, Lru/fokus/tetrad/Ui;->MUTED:I

    sget-object v9, Lru/fokus/tetrad/Ui;->BODY:Landroid/graphics/Typeface;

    invoke-static {p0, v7, v2, v8, v9}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 385
    :cond_4
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "ok"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 386
    new-instance v0, Landroid/text/SpannableStringBuilder;

    const-string v2, "\u0412\u0435\u0440\u043d\u043e: "

    invoke-direct {v0, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 387
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    .line 388
    invoke-virtual {v0, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 389
    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    sget v7, Lru/fokus/tetrad/Ui;->FG:I

    invoke-direct {v6, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {v0, v6, v2, v7, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 390
    new-instance v6, Lru/fokus/tetrad/CheckActivity$Bold;

    sget-object v7, Lru/fokus/tetrad/Ui;->BOLD:Landroid/graphics/Typeface;

    invoke-direct {v6, v7}, Lru/fokus/tetrad/CheckActivity$Bold;-><init>(Landroid/graphics/Typeface;)V

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {v0, v6, v2, v7, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 391
    const/high16 v2, 0x41600000    # 14.0f

    sget v6, Lru/fokus/tetrad/Ui;->MUTED:I

    sget-object v7, Lru/fokus/tetrad/Ui;->BODY:Landroid/graphics/Typeface;

    invoke-static {p0, v0, v2, v6, v7}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 393
    :cond_5
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Lru/fokus/tetrad/Ui;->weight(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v5, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 394
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 396
    const-string v0, "issues"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 397
    if-eqz v2, :cond_18

    const/4 v0, 0x0

    :goto_6
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_18

    .line 398
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 399
    if-nez v3, :cond_12

    .line 397
    :goto_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 356
    :cond_6
    const-string v1, "error"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    sget v1, Lru/fokus/tetrad/Ui;->RED:I

    goto/16 :goto_0

    :cond_7
    sget v1, Lru/fokus/tetrad/Ui;->WARN:I

    goto/16 :goto_0

    .line 357
    :cond_8
    const-string v2, "error"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    sget v2, Lru/fokus/tetrad/Ui;->RED_SOFT:I

    goto/16 :goto_1

    :cond_9
    sget v2, Lru/fokus/tetrad/Ui;->WARN_SOFT:I

    goto/16 :goto_1

    .line 364
    :cond_a
    const-string v3, "error"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    const-string v3, "\u2717"

    goto/16 :goto_2

    :cond_b
    const-string v3, "!"

    goto/16 :goto_2

    .line 370
    :cond_c
    const-string v2, "error"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    const-string v2, " \u2014 \u0435\u0441\u0442\u044c \u043e\u0448\u0438\u0431\u043a\u0430"

    goto/16 :goto_3

    :cond_d
    const-string v2, " \u2014 \u0435\u0441\u0442\u044c \u043d\u0435\u0434\u043e\u0447\u0451\u0442"

    goto/16 :goto_3

    .line 373
    :cond_e
    const-string v7, "text"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    const-string v2, "\u0438\u0437 \u0442\u0435\u043a\u0441\u0442\u0430"

    goto/16 :goto_4

    :cond_f
    const-string v7, "notebook"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    const-string v2, "\u0438\u0437 \u0442\u0435\u0442\u0440\u0430\u0434\u0438"

    goto/16 :goto_4

    :cond_10
    const-string v2, ""

    goto/16 :goto_4

    .line 374
    :cond_11
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, ")"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_5

    .line 400
    :cond_12
    const/16 v5, 0x8

    invoke-static {p0, v5}, Lru/fokus/tetrad/Ui;->col(Landroid/content/Context;I)Landroid/widget/LinearLayout;

    move-result-object v5

    .line 401
    const/high16 v6, 0x41400000    # 12.0f

    invoke-static {v6}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v6

    const/high16 v7, 0x41200000    # 10.0f

    invoke-static {v7}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v7

    const/high16 v8, 0x41400000    # 12.0f

    invoke-static {v8}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v8

    const/high16 v9, 0x41400000    # 12.0f

    invoke-static {v9}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v9

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 402
    sget v6, Lru/fokus/tetrad/Ui;->CARD:I

    const/high16 v7, 0x41400000    # 12.0f

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v6, v7, v8, v9}, Lru/fokus/tetrad/Ui;->round(IFIF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 403
    const-string v6, "where"

    invoke-static {v3, v6}, Lru/fokus/tetrad/CheckActivity;->str(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 404
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_13

    const/high16 v7, 0x41500000    # 13.0f

    sget-object v8, Lru/fokus/tetrad/Ui;->BOLD:Landroid/graphics/Typeface;

    invoke-static {p0, v6, v7, v1, v8}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 405
    :cond_13
    const-string v6, "what"

    invoke-static {v3, v6}, Lru/fokus/tetrad/CheckActivity;->str(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "why"

    invoke-static {v3, v7}, Lru/fokus/tetrad/CheckActivity;->str(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "hint"

    invoke-static {v3, v8}, Lru/fokus/tetrad/CheckActivity;->str(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "fix"

    invoke-static {v3, v9}, Lru/fokus/tetrad/CheckActivity;->str(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 406
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_14

    const-string v9, "\u041e\u0448\u0438\u0431\u043a\u0430: "

    const/4 v10, 0x0

    invoke-direct {p0, v9, v6, v10}, Lru/fokus/tetrad/CheckActivity;->labeled(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v6

    const/high16 v9, 0x41700000    # 15.0f

    sget v10, Lru/fokus/tetrad/Ui;->FG:I

    sget-object v11, Lru/fokus/tetrad/Ui;->BODY:Landroid/graphics/Typeface;

    invoke-static {p0, v6, v9, v10, v11}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 407
    :cond_14
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_15

    const-string v6, "\u041f\u0440\u0430\u0432\u0438\u043b\u043e: "

    const/4 v9, 0x0

    invoke-direct {p0, v6, v7, v9}, Lru/fokus/tetrad/CheckActivity;->labeled(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v6

    const/high16 v7, 0x41700000    # 15.0f

    sget v9, Lru/fokus/tetrad/Ui;->FG:I

    sget-object v10, Lru/fokus/tetrad/Ui;->BODY:Landroid/graphics/Typeface;

    invoke-static {p0, v6, v7, v9, v10}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 408
    :cond_15
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_16

    const-string v6, "\u041f\u043e\u0434\u0441\u043a\u0430\u0437\u043a\u0430: "

    const/4 v7, 0x0

    invoke-direct {p0, v6, v8, v7}, Lru/fokus/tetrad/CheckActivity;->labeled(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v6

    const/high16 v7, 0x41700000    # 15.0f

    sget v8, Lru/fokus/tetrad/Ui;->FG:I

    sget-object v9, Lru/fokus/tetrad/Ui;->BODY:Landroid/graphics/Typeface;

    invoke-static {p0, v6, v7, v8, v9}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 409
    :cond_16
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_17

    .line 410
    const-string v6, "\u041a\u0430\u043a \u0438\u0441\u043f\u0440\u0430\u0432\u0438\u0442\u044c: "

    sget v7, Lru/fokus/tetrad/Ui;->OK:I

    invoke-direct {p0, v6, v3, v7}, Lru/fokus/tetrad/CheckActivity;->labeled(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v3

    const/high16 v6, 0x41700000    # 15.0f

    sget v7, Lru/fokus/tetrad/Ui;->FG:I

    sget-object v8, Lru/fokus/tetrad/Ui;->BODY:Landroid/graphics/Typeface;

    invoke-static {p0, v3, v6, v7, v8}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v3

    .line 411
    const/high16 v6, 0x41400000    # 12.0f

    invoke-static {v6}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v6

    const/high16 v7, 0x41200000    # 10.0f

    invoke-static {v7}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v7

    const/high16 v8, 0x41400000    # 12.0f

    invoke-static {v8}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v8

    const/high16 v9, 0x41200000    # 10.0f

    invoke-static {v9}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v9

    invoke-virtual {v3, v6, v7, v8, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 412
    sget v6, Lru/fokus/tetrad/Ui;->OK_SOFT:I

    const/high16 v7, 0x41200000    # 10.0f

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v6, v7, v8, v9}, Lru/fokus/tetrad/Ui;->round(IFIF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 413
    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 414
    const-string v6, "\u041f\u043e\u043a\u0430\u0437\u0430\u0442\u044c \u0438\u0441\u043f\u0440\u0430\u0432\u043b\u0435\u043d\u0438\u0435"

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static {p0, v6, v7, v8}, Lru/fokus/tetrad/Ui;->button(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v6

    .line 415
    new-instance v7, Lru/fokus/tetrad/CheckActivity$13;

    invoke-direct {v7, p0, v3, v6}, Lru/fokus/tetrad/CheckActivity$13;-><init>(Lru/fokus/tetrad/CheckActivity;Landroid/widget/TextView;Landroid/widget/TextView;)V

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 420
    invoke-static {}, Lru/fokus/tetrad/Ui;->wrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 421
    invoke-static {}, Lru/fokus/tetrad/Ui;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 423
    :cond_17
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_7

    .line 425
    :cond_18
    return-object v4
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    .prologue
    const/16 v4, 0x15

    const/16 v3, 0xb

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 255
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 258
    if-eq p1, v3, :cond_0

    const/16 v2, 0xc

    if-ne p1, v2, :cond_3

    :cond_0
    iget-object v2, p0, Lru/fokus/tetrad/CheckActivity;->cs:Lru/fokus/tetrad/CheckState;

    iget-object v2, v2, Lru/fokus/tetrad/CheckState;->condition:Ljava/util/List;

    if-ne p1, v3, :cond_2

    :goto_0
    move v1, v0

    .line 261
    :goto_1
    iget-object v0, p0, Lru/fokus/tetrad/CheckActivity;->cs:Lru/fokus/tetrad/CheckState;

    const-string v3, ""

    iput-object v3, v0, Lru/fokus/tetrad/CheckState;->status:Ljava/lang/String;

    .line 262
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    rsub-int/lit8 v4, v0, 0x5

    new-instance v5, Lru/fokus/tetrad/CheckActivity$12;

    invoke-direct {v5, p0, v2}, Lru/fokus/tetrad/CheckActivity$12;-><init>(Lru/fokus/tetrad/CheckActivity;Ljava/util/List;)V

    move-object v0, p0

    move v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lru/fokus/tetrad/Photos;->handle(Landroid/app/Activity;ZILandroid/content/Intent;ILru/fokus/tetrad/Photos$Done;)V

    .line 268
    :cond_1
    return-void

    :cond_2
    move v0, v1

    .line 258
    goto :goto_0

    .line 259
    :cond_3
    if-eq p1, v4, :cond_4

    const/16 v2, 0x16

    if-ne p1, v2, :cond_1

    :cond_4
    iget-object v2, p0, Lru/fokus/tetrad/CheckActivity;->cs:Lru/fokus/tetrad/CheckState;

    iget-object v2, v2, Lru/fokus/tetrad/CheckState;->solution:Ljava/util/List;

    if-ne p1, v4, :cond_5

    :goto_2
    move v1, v0

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_2
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0}, Lru/fokus/tetrad/CheckActivity;->goHome()V

    return-void
.end method

.method public onCheckChanged()V
    .locals 1

    .prologue
    .line 92
    iget-boolean v0, p0, Lru/fokus/tetrad/CheckActivity;->wasChecking:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/fokus/tetrad/CheckActivity;->cs:Lru/fokus/tetrad/CheckState;

    iget-boolean v0, v0, Lru/fokus/tetrad/CheckState;->checking:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lru/fokus/tetrad/CheckActivity;->cs:Lru/fokus/tetrad/CheckState;

    iget-object v0, v0, Lru/fokus/tetrad/CheckState;->report:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lru/fokus/tetrad/CheckActivity;->scrollToReport:Z

    .line 93
    :cond_0
    iget-object v0, p0, Lru/fokus/tetrad/CheckActivity;->cs:Lru/fokus/tetrad/CheckState;

    iget-boolean v0, v0, Lru/fokus/tetrad/CheckState;->checking:Z

    iput-boolean v0, p0, Lru/fokus/tetrad/CheckActivity;->wasChecking:Z

    .line 94
    invoke-direct {p0}, Lru/fokus/tetrad/CheckActivity;->render()V

    .line 95
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/high16 v3, 0x41900000    # 18.0f

    const/4 v2, 0x0

    .line 46
    invoke-static {p0, v2}, Lru/fokus/tetrad/Ui;->applyTheme(Landroid/app/Activity;Z)V

    .line 47
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    sget v0, Lru/fokus/tetrad/Ui;->BG:I

    sget-boolean v1, Lru/fokus/tetrad/Ui;->night:Z

    invoke-static {p0, v0, v1}, Lru/fokus/tetrad/Ui;->paintBars(Landroid/app/Activity;IZ)V

    .line 49
    new-instance v0, Lru/fokus/tetrad/Store;

    invoke-direct {v0, p0}, Lru/fokus/tetrad/Store;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lru/fokus/tetrad/CheckActivity;->store:Lru/fokus/tetrad/Store;

    .line 50
    invoke-static {}, Lru/fokus/tetrad/CheckState;->get()Lru/fokus/tetrad/CheckState;

    move-result-object v0

    iput-object v0, p0, Lru/fokus/tetrad/CheckActivity;->cs:Lru/fokus/tetrad/CheckState;

    .line 51
    invoke-virtual {p0}, Lru/fokus/tetrad/CheckActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 52
    if-nez p1, :cond_1

    if-eqz v0, :cond_1

    .line 53
    const-string v1, "fromLesson"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 54
    iget-object v0, p0, Lru/fokus/tetrad/CheckActivity;->store:Lru/fokus/tetrad/Store;

    invoke-virtual {v0}, Lru/fokus/tetrad/Store;->lessonPhotos()Ljava/util/List;

    move-result-object v0

    .line 55
    iget-object v1, p0, Lru/fokus/tetrad/CheckActivity;->store:Lru/fokus/tetrad/Store;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2}, Lru/fokus/tetrad/Store;->setLessonPhotos(Ljava/util/List;)V

    .line 56
    iget-object v1, p0, Lru/fokus/tetrad/CheckActivity;->cs:Lru/fokus/tetrad/CheckState;

    iget-object v2, p0, Lru/fokus/tetrad/CheckActivity;->store:Lru/fokus/tetrad/Store;

    invoke-virtual {v2}, Lru/fokus/tetrad/Store;->grade()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lru/fokus/tetrad/CheckState;->newCheck(Ljava/util/List;Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lru/fokus/tetrad/CheckActivity;->store:Lru/fokus/tetrad/Store;

    invoke-virtual {v0}, Lru/fokus/tetrad/Store;->lessonItems()Lorg/json/JSONArray;

    move-result-object v0

    .line 58
    iget-object v1, p0, Lru/fokus/tetrad/CheckActivity;->cs:Lru/fokus/tetrad/CheckState;

    iput-object v0, v1, Lru/fokus/tetrad/CheckState;->lessonItems:Lorg/json/JSONArray;

    .line 59
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 60
    iget-object v1, p0, Lru/fokus/tetrad/CheckActivity;->cs:Lru/fokus/tetrad/CheckState;

    const-string v2, "written"

    invoke-static {v0, v2}, Lru/fokus/tetrad/Homework;->text(Lorg/json/JSONArray;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lru/fokus/tetrad/CheckState;->task:Ljava/lang/String;

    .line 61
    iget-object v1, p0, Lru/fokus/tetrad/CheckActivity;->cs:Lru/fokus/tetrad/CheckState;

    iget-object v1, v1, Lru/fokus/tetrad/CheckState;->task:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lru/fokus/tetrad/CheckActivity;->cs:Lru/fokus/tetrad/CheckState;

    const-string v2, "external"

    invoke-static {v0, v2}, Lru/fokus/tetrad/Homework;->text(Lorg/json/JSONArray;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lru/fokus/tetrad/CheckState;->task:Ljava/lang/String;

    .line 63
    :cond_0
    :goto_0
    iget-object v1, p0, Lru/fokus/tetrad/CheckActivity;->cs:Lru/fokus/tetrad/CheckState;

    iget-object v0, p0, Lru/fokus/tetrad/CheckActivity;->store:Lru/fokus/tetrad/Store;

    invoke-virtual {v0}, Lru/fokus/tetrad/Store;->lessonSubject()Ljava/lang/String;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, ""

    :goto_1
    iput-object v0, v1, Lru/fokus/tetrad/CheckState;->subject:Ljava/lang/String;

    .line 64
    iget-object v0, p0, Lru/fokus/tetrad/CheckActivity;->store:Lru/fokus/tetrad/Store;

    const-string v1, ""

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lru/fokus/tetrad/Store;->setLessonText(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    :cond_1
    :goto_2
    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lru/fokus/tetrad/CheckActivity;->scroll:Landroid/widget/ScrollView;

    .line 71
    iget-object v0, p0, Lru/fokus/tetrad/CheckActivity;->scroll:Landroid/widget/ScrollView;

    sget v1, Lru/fokus/tetrad/Ui;->BG:I

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setBackgroundColor(I)V

    .line 72
    const/16 v0, 0x10

    invoke-static {p0, v0}, Lru/fokus/tetrad/Ui;->col(Landroid/content/Context;I)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lru/fokus/tetrad/CheckActivity;->content:Landroid/widget/LinearLayout;

    .line 73
    iget-object v0, p0, Lru/fokus/tetrad/CheckActivity;->content:Landroid/widget/LinearLayout;

    invoke-static {v3}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v1

    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {v2}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v2

    invoke-static {v3}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v3

    const/high16 v4, 0x42200000    # 40.0f

    invoke-static {v4}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 74
    iget-object v0, p0, Lru/fokus/tetrad/CheckActivity;->scroll:Landroid/widget/ScrollView;

    iget-object v1, p0, Lru/fokus/tetrad/CheckActivity;->content:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 75
    iget-object v0, p0, Lru/fokus/tetrad/CheckActivity;->scroll:Landroid/widget/ScrollView;

    invoke-virtual {p0, v0}, Lru/fokus/tetrad/CheckActivity;->setContentView(Landroid/view/View;)V

    .line 76
    return-void

    .line 62
    :cond_2
    iget-object v0, p0, Lru/fokus/tetrad/CheckActivity;->cs:Lru/fokus/tetrad/CheckState;

    iget-object v1, p0, Lru/fokus/tetrad/CheckActivity;->store:Lru/fokus/tetrad/Store;

    invoke-virtual {v1}, Lru/fokus/tetrad/Store;->lessonText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lru/fokus/tetrad/CheckState;->task:Ljava/lang/String;

    goto :goto_0

    .line 63
    :cond_3
    iget-object v0, p0, Lru/fokus/tetrad/CheckActivity;->store:Lru/fokus/tetrad/Store;

    invoke-virtual {v0}, Lru/fokus/tetrad/Store;->lessonSubject()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 65
    :cond_4
    const-string v1, "standalone"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lru/fokus/tetrad/CheckActivity;->cs:Lru/fokus/tetrad/CheckState;

    iget-boolean v0, v0, Lru/fokus/tetrad/CheckState;->checking:Z

    if-nez v0, :cond_1

    .line 66
    iget-object v0, p0, Lru/fokus/tetrad/CheckActivity;->cs:Lru/fokus/tetrad/CheckState;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lru/fokus/tetrad/CheckActivity;->store:Lru/fokus/tetrad/Store;

    invoke-virtual {v2}, Lru/fokus/tetrad/Store;->grade()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lru/fokus/tetrad/CheckState;->newCheck(Ljava/util/List;Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lru/fokus/tetrad/CheckActivity;->cs:Lru/fokus/tetrad/CheckState;

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    iput-object v1, v0, Lru/fokus/tetrad/CheckState;->lessonItems:Lorg/json/JSONArray;

    goto :goto_2
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 85
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 86
    iget-object v0, p0, Lru/fokus/tetrad/CheckActivity;->cs:Lru/fokus/tetrad/CheckState;

    iget-object v0, v0, Lru/fokus/tetrad/CheckState;->listener:Lru/fokus/tetrad/CheckState$Listener;

    if-ne v0, p0, :cond_0

    iget-object v0, p0, Lru/fokus/tetrad/CheckActivity;->cs:Lru/fokus/tetrad/CheckState;

    const/4 v1, 0x0

    iput-object v1, v0, Lru/fokus/tetrad/CheckState;->listener:Lru/fokus/tetrad/CheckState$Listener;

    .line 87
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 79
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 80
    iget-object v0, p0, Lru/fokus/tetrad/CheckActivity;->cs:Lru/fokus/tetrad/CheckState;

    iput-object p0, v0, Lru/fokus/tetrad/CheckState;->listener:Lru/fokus/tetrad/CheckState$Listener;

    .line 81
    invoke-direct {p0}, Lru/fokus/tetrad/CheckActivity;->render()V

    .line 82
    return-void
.end method
