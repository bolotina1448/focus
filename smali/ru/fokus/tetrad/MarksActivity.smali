.class public Lru/fokus/tetrad/MarksActivity;
.super Landroid/app/Activity;
.source "MarksActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/fokus/tetrad/MarksActivity$Flow;
    }
.end annotation


# static fields
.field private static final PERIODS:[Ljava/lang/String;

.field private static final RC_LOGIN:I = 0x1


# instance fields
.field private advice:Ljava/lang/String;

.field private adviceBusy:Z

.field private allMarks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lru/fokus/tetrad/Mesh$Mark;",
            ">;"
        }
    .end annotation
.end field

.field private content:Landroid/widget/LinearLayout;

.field private error:Ljava/lang/String;

.field private final expanded:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private gen:I

.field private loading:Z

.field private needLogin:Z

.field private overall:D

.field private period:I

.field private store:Lru/fokus/tetrad/Store;

.field private subjects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lru/fokus/tetrad/Grades$Subject;",
            ">;"
        }
    .end annotation
.end field

.field private total:I

.field private view:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 28
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "30 \u0434\u043d\u0435\u0439"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "\u0427\u0435\u0442\u0432\u0435\u0440\u0442\u044c"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "\u0423\u0447\u0435\u0431\u043d\u044b\u0439 \u0433\u043e\u0434"

    aput-object v2, v0, v1

    sput-object v0, Lru/fokus/tetrad/MarksActivity;->PERIODS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 32
    const/4 v0, 0x1

    iput v0, p0, Lru/fokus/tetrad/MarksActivity;->period:I

    .line 33
    iput-boolean v2, p0, Lru/fokus/tetrad/MarksActivity;->loading:Z

    .line 34
    iput-object v3, p0, Lru/fokus/tetrad/MarksActivity;->error:Ljava/lang/String;

    .line 35
    iput-boolean v2, p0, Lru/fokus/tetrad/MarksActivity;->needLogin:Z

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lru/fokus/tetrad/MarksActivity;->allMarks:Ljava/util/List;

    .line 38
    iput v2, p0, Lru/fokus/tetrad/MarksActivity;->view:I

    .line 39
    iput v2, p0, Lru/fokus/tetrad/MarksActivity;->total:I

    .line 40
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lru/fokus/tetrad/MarksActivity;->overall:D

    .line 41
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lru/fokus/tetrad/MarksActivity;->expanded:Ljava/util/Set;

    .line 42
    iput-object v3, p0, Lru/fokus/tetrad/MarksActivity;->advice:Ljava/lang/String;

    .line 43
    iput-boolean v2, p0, Lru/fokus/tetrad/MarksActivity;->adviceBusy:Z

    .line 44
    iput v2, p0, Lru/fokus/tetrad/MarksActivity;->gen:I

    return-void
.end method

.method static synthetic access$000(Lru/fokus/tetrad/MarksActivity;)I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lru/fokus/tetrad/MarksActivity;->gen:I

    return v0
.end method

.method static synthetic access$1000(Lru/fokus/tetrad/MarksActivity;)Lru/fokus/tetrad/Store;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lru/fokus/tetrad/MarksActivity;->store:Lru/fokus/tetrad/Store;

    return-object v0
.end method

.method static synthetic access$102(Lru/fokus/tetrad/MarksActivity;Z)Z
    .locals 0

    .prologue
    .line 26
    iput-boolean p1, p0, Lru/fokus/tetrad/MarksActivity;->loading:Z

    return p1
.end method

.method static synthetic access$1100(Lru/fokus/tetrad/MarksActivity;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lru/fokus/tetrad/MarksActivity;->load()V

    return-void
.end method

.method static synthetic access$1202(Lru/fokus/tetrad/MarksActivity;I)I
    .locals 0

    .prologue
    .line 26
    iput p1, p0, Lru/fokus/tetrad/MarksActivity;->view:I

    return p1
.end method

.method static synthetic access$1300(Lru/fokus/tetrad/MarksActivity;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lru/fokus/tetrad/MarksActivity;->askAdvice()V

    return-void
.end method

.method static synthetic access$1400(Lru/fokus/tetrad/MarksActivity;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lru/fokus/tetrad/MarksActivity;->expanded:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$1502(Lru/fokus/tetrad/MarksActivity;Z)Z
    .locals 0

    .prologue
    .line 26
    iput-boolean p1, p0, Lru/fokus/tetrad/MarksActivity;->adviceBusy:Z

    return p1
.end method

.method static synthetic access$1602(Lru/fokus/tetrad/MarksActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lru/fokus/tetrad/MarksActivity;->advice:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lru/fokus/tetrad/MarksActivity;)Z
    .locals 1

    .prologue
    .line 26
    iget-boolean v0, p0, Lru/fokus/tetrad/MarksActivity;->needLogin:Z

    return v0
.end method

.method static synthetic access$202(Lru/fokus/tetrad/MarksActivity;Z)Z
    .locals 0

    .prologue
    .line 26
    iput-boolean p1, p0, Lru/fokus/tetrad/MarksActivity;->needLogin:Z

    return p1
.end method

.method static synthetic access$302(Lru/fokus/tetrad/MarksActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lru/fokus/tetrad/MarksActivity;->error:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$402(Lru/fokus/tetrad/MarksActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lru/fokus/tetrad/MarksActivity;->subjects:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$502(Lru/fokus/tetrad/MarksActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lru/fokus/tetrad/MarksActivity;->allMarks:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$602(Lru/fokus/tetrad/MarksActivity;I)I
    .locals 0

    .prologue
    .line 26
    iput p1, p0, Lru/fokus/tetrad/MarksActivity;->total:I

    return p1
.end method

.method static synthetic access$702(Lru/fokus/tetrad/MarksActivity;D)D
    .locals 1

    .prologue
    .line 26
    iput-wide p1, p0, Lru/fokus/tetrad/MarksActivity;->overall:D

    return-wide p1
.end method

.method static synthetic access$800(Lru/fokus/tetrad/MarksActivity;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lru/fokus/tetrad/MarksActivity;->render()V

    return-void
.end method

.method static synthetic access$900(Lru/fokus/tetrad/MarksActivity;)I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lru/fokus/tetrad/MarksActivity;->period:I

    return v0
.end method

.method static synthetic access$902(Lru/fokus/tetrad/MarksActivity;I)I
    .locals 0

    .prologue
    .line 26
    iput p1, p0, Lru/fokus/tetrad/MarksActivity;->period:I

    return p1
.end method

.method private askAdvice()V
    .locals 3

    .prologue
    .line 489
    const/4 v0, 0x1

    iput-boolean v0, p0, Lru/fokus/tetrad/MarksActivity;->adviceBusy:Z

    .line 490
    invoke-direct {p0}, Lru/fokus/tetrad/MarksActivity;->render()V

    .line 491
    iget-object v0, p0, Lru/fokus/tetrad/MarksActivity;->store:Lru/fokus/tetrad/Store;

    invoke-virtual {v0}, Lru/fokus/tetrad/Store;->grade()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    .line 492
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u0422\u044b \u2014 \u0434\u043e\u0431\u0440\u043e\u0436\u0435\u043b\u0430\u0442\u0435\u043b\u044c\u043d\u044b\u0439 \u0448\u043a\u043e\u043b\u044c\u043d\u044b\u0439 \u043d\u0430\u0441\u0442\u0430\u0432\u043d\u0438\u043a. \u0412\u043e\u0442 \u043e\u0446\u0435\u043d\u043a\u0438 \u0443\u0447\u0435\u043d\u0438\u043a\u0430 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u0437\u0430 \u043f\u0435\u0440\u0438\u043e\u0434 \u00ab"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lru/fokus/tetrad/MarksActivity;->PERIODS:[Ljava/lang/String;

    iget v2, p0, Lru/fokus/tetrad/MarksActivity;->period:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u00bb \u043f\u043e \u043f\u0440\u0435\u0434\u043c\u0435\u0442\u0430\u043c (\u043f\u044f\u0442\u0438\u0431\u0430\u043b\u043b\u044c\u043d\u0430\u044f \u0448\u043a\u0430\u043b\u0430):\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lru/fokus/tetrad/MarksActivity;->subjects:Ljava/util/List;

    .line 493
    invoke-static {v1}, Lru/fokus/tetrad/Grades;->summary(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\u0414\u0430\u0439 \u043a\u043e\u0440\u043e\u0442\u043a\u0438\u0439 \u0440\u0430\u0437\u0431\u043e\u0440 \u0434\u043b\u044f \u0443\u0447\u0435\u043d\u0438\u043a\u0430 (\u0434\u043e 150 \u0441\u043b\u043e\u0432), \u043f\u043e-\u0440\u0443\u0441\u0441\u043a\u0438, \u043f\u0440\u043e\u0441\u0442\u044b\u043c\u0438 \u0441\u043b\u043e\u0432\u0430\u043c\u0438, \u0431\u0435\u0437 Markdown \u0438 \u0437\u0432\u0451\u0437\u0434\u043e\u0447\u0435\u043a:\n1) \u043a\u0430\u043a\u0438\u0435 \u043f\u0440\u0435\u0434\u043c\u0435\u0442\u044b \u0438\u0434\u0443\u0442 \u0445\u043e\u0440\u043e\u0448\u043e \u2014 \u043e\u0434\u043d\u043e\u0439 \u0444\u0440\u0430\u0437\u043e\u0439 \u043f\u043e\u0445\u0432\u0430\u043b\u0438;\n2) 1\u20133 \u043f\u0440\u0435\u0434\u043c\u0435\u0442\u0430, \u043a\u043e\u0442\u043e\u0440\u044b\u0435 \u043d\u0443\u0436\u043d\u043e \u043f\u043e\u0434\u0442\u044f\u043d\u0443\u0442\u044c \u0432 \u043f\u0435\u0440\u0432\u0443\u044e \u043e\u0447\u0435\u0440\u0435\u0434\u044c, \u0438 \u043f\u043e\u0447\u0435\u043c\u0443 (\u043e\u043f\u0438\u0440\u0430\u0439\u0441\u044f \u043d\u0430 \u0446\u0438\u0444\u0440\u044b: \u0441\u0440\u0435\u0434\u043d\u0438\u0439 \u0431\u0430\u043b\u043b, \u0434\u0432\u043e\u0439\u043a\u0438, \u0441\u043d\u0438\u0436\u0435\u043d\u0438\u0435);\n3) \u043f\u043e \u043a\u0430\u0436\u0434\u043e\u043c\u0443 \u0438\u0437 \u043d\u0438\u0445 1\u20132 \u043a\u043e\u043d\u043a\u0440\u0435\u0442\u043d\u044b\u0445 \u0441\u043e\u0432\u0435\u0442\u0430, \u0447\u0442\u043e \u0434\u0435\u043b\u0430\u0442\u044c \u043d\u0430 \u044d\u0442\u043e\u0439 \u043d\u0435\u0434\u0435\u043b\u0435 (\u043d\u0430\u043f\u0440\u0438\u043c\u0435\u0440, \u0440\u0430\u0437\u043e\u0431\u0440\u0430\u0442\u044c \u043e\u0448\u0438\u0431\u043a\u0438 \u043a\u043e\u043d\u0442\u0440\u043e\u043b\u044c\u043d\u043e\u0439, 15 \u043c\u0438\u043d\u0443\u0442 \u0432 \u0434\u0435\u043d\u044c \u043f\u043e\u0432\u0442\u043e\u0440\u044f\u0442\u044c \u043f\u0440\u0430\u0432\u0438\u043b\u0430).\n\u041d\u0435 \u0432\u044b\u0434\u0443\u043c\u044b\u0432\u0430\u0439 \u0442\u0435\u043c\u044b \u0443\u0440\u043e\u043a\u043e\u0432, \u043a\u043e\u0442\u043e\u0440\u044b\u0445 \u043d\u0435\u0442 \u0432 \u0434\u0430\u043d\u043d\u044b\u0445. \u041d\u0435 \u0440\u0443\u0433\u0430\u0439."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 499
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lru/fokus/tetrad/MarksActivity$11;

    invoke-direct {v2, p0, v0}, Lru/fokus/tetrad/MarksActivity$11;-><init>(Lru/fokus/tetrad/MarksActivity;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 506
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 507
    return-void

    .line 491
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lru/fokus/tetrad/MarksActivity;->store:Lru/fokus/tetrad/Store;

    invoke-virtual {v1}, Lru/fokus/tetrad/Store;->grade()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u043a\u043b\u0430\u0441\u0441\u0430"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private badge(Lru/fokus/tetrad/Mesh$Mark;I)Landroid/view/View;
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, -0x1

    const/4 v7, -0x2

    const/high16 v6, 0x3f800000    # 1.0f

    .line 259
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 260
    iget-wide v2, p1, Lru/fokus/tetrad/Mesh$Mark;->value:D

    invoke-direct {p0, v2, v3}, Lru/fokus/tetrad/MarksActivity;->markBg(D)I

    move-result v0

    const/high16 v2, 0x41000000    # 8.0f

    iget-wide v4, p1, Lru/fokus/tetrad/Mesh$Mark;->value:D

    invoke-direct {p0, v4, v5}, Lru/fokus/tetrad/MarksActivity;->markColor(D)I

    move-result v3

    invoke-static {v0, v2, v3, v6}, Lru/fokus/tetrad/Ui;->round(IFIF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 261
    iget-wide v2, p1, Lru/fokus/tetrad/Mesh$Mark;->value:D

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v0, v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/16 v0, 0x1e

    if-le p2, v0, :cond_1

    const/high16 v0, 0x41880000    # 17.0f

    :goto_0
    iget-wide v4, p1, Lru/fokus/tetrad/Mesh$Mark;->value:D

    invoke-direct {p0, v4, v5}, Lru/fokus/tetrad/MarksActivity;->markColor(D)I

    move-result v3

    sget-object v4, Lru/fokus/tetrad/Ui;->BOLD:Landroid/graphics/Typeface;

    invoke-static {p0, v2, v0, v3, v4}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v0

    .line 262
    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 263
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 264
    iget v0, p1, Lru/fokus/tetrad/Mesh$Mark;->weight:I

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    .line 265
    iget v0, p1, Lru/fokus/tetrad/Mesh$Mark;->weight:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/high16 v2, 0x41100000    # 9.0f

    iget-wide v4, p1, Lru/fokus/tetrad/Mesh$Mark;->value:D

    invoke-direct {p0, v4, v5}, Lru/fokus/tetrad/MarksActivity;->markColor(D)I

    move-result v3

    sget-object v4, Lru/fokus/tetrad/Ui;->BOLD:Landroid/graphics/Typeface;

    invoke-static {p0, v0, v2, v3, v4}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v0

    .line 266
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const v3, 0x800055

    invoke-direct {v2, v7, v7, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 267
    const/high16 v3, 0x40400000    # 3.0f

    invoke-static {v3}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v3

    invoke-static {v6}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v4

    invoke-virtual {v2, v9, v9, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 268
    invoke-virtual {v1, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 270
    :cond_0
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    int-to-float v2, p2

    invoke-static {v2}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v2

    int-to-float v3, p2

    invoke-static {v3}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v3

    invoke-direct {v0, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 271
    return-object v1

    .line 261
    :cond_1
    const/high16 v0, 0x41700000    # 15.0f

    goto :goto_0
.end method

.method private colorFor(D)I
    .locals 3

    .prologue
    .line 418
    const-wide/high16 v0, 0x4012000000000000L    # 4.5

    cmpl-double v0, p1, v0

    if-ltz v0, :cond_0

    sget v0, Lru/fokus/tetrad/Ui;->OK:I

    :goto_0
    return v0

    :cond_0
    const-wide/high16 v0, 0x400c000000000000L    # 3.5

    cmpl-double v0, p1, v0

    if-ltz v0, :cond_1

    invoke-direct {p0}, Lru/fokus/tetrad/MarksActivity;->four()I

    move-result v0

    goto :goto_0

    :cond_1
    const-wide/high16 v0, 0x4004000000000000L    # 2.5

    cmpl-double v0, p1, v0

    if-ltz v0, :cond_2

    sget v0, Lru/fokus/tetrad/Ui;->WARN:I

    goto :goto_0

    :cond_2
    sget v0, Lru/fokus/tetrad/Ui;->RED:I

    goto :goto_0
.end method

.method private details(Ljava/util/List;Z)Landroid/view/View;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lru/fokus/tetrad/Mesh$Mark;",
            ">;Z)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 348
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v0, "yyyy-MM-dd"

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v4, v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v0, "d MMMM"

    new-instance v1, Ljava/util/Locale;

    const-string v2, "ru"

    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 349
    const/16 v0, 0x8

    invoke-static {p0, v0}, Lru/fokus/tetrad/Ui;->col(Landroid/content/Context;I)Landroid/widget/LinearLayout;

    move-result-object v6

    .line 350
    const/4 v0, 0x0

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v1}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 351
    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    move v3, v0

    :goto_1
    if-eqz p2, :cond_4

    if-ltz v3, :cond_5

    .line 352
    :cond_0
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/fokus/tetrad/Mesh$Mark;

    .line 353
    iget-object v1, v0, Lru/fokus/tetrad/Mesh$Mark;->date:Ljava/lang/String;

    .line 354
    :try_start_0
    iget-object v2, v0, Lru/fokus/tetrad/Mesh$Mark;->date:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v7, 0xa

    if-lt v2, v7, :cond_6

    iget-object v2, v0, Lru/fokus/tetrad/Mesh$Mark;->date:Ljava/lang/String;

    const/4 v7, 0x0

    const/16 v8, 0xa

    invoke-virtual {v2, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-virtual {v4, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 355
    :goto_3
    const/16 v2, 0xa

    invoke-static {p0, v2}, Lru/fokus/tetrad/Ui;->row(Landroid/content/Context;I)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 356
    const/16 v7, 0x1e

    invoke-direct {p0, v0, v7}, Lru/fokus/tetrad/MarksActivity;->badge(Lru/fokus/tetrad/Mesh$Mark;I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 357
    const/4 v7, 0x0

    invoke-static {p0, v7}, Lru/fokus/tetrad/Ui;->col(Landroid/content/Context;I)Landroid/widget/LinearLayout;

    move-result-object v7

    .line 358
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, " \u00b7 "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v1, v0, Lru/fokus/tetrad/Mesh$Mark;->form:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lru/fokus/tetrad/Mesh$Mark;->form:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_1
    const-string v1, "\u043e\u0446\u0435\u043d\u043a\u0430"

    :goto_4
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v1, v0, Lru/fokus/tetrad/Mesh$Mark;->weight:I

    const/4 v9, 0x1

    if-le v1, v9, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " \u00b7 \u0432\u0435\u0441 "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v9, v0, Lru/fokus/tetrad/Mesh$Mark;->weight:I

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_5
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/high16 v8, 0x41600000    # 14.0f

    sget v9, Lru/fokus/tetrad/Ui;->FG:I

    sget-object v10, Lru/fokus/tetrad/Ui;->BODY:Landroid/graphics/Typeface;

    invoke-static {p0, v1, v8, v9, v10}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 359
    iget-object v1, v0, Lru/fokus/tetrad/Mesh$Mark;->comment:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lru/fokus/tetrad/Mesh$Mark;->comment:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v0, v0, Lru/fokus/tetrad/Mesh$Mark;->comment:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x41500000    # 13.0f

    sget v8, Lru/fokus/tetrad/Ui;->MUTED:I

    sget-object v9, Lru/fokus/tetrad/Ui;->BODY:Landroid/graphics/Typeface;

    invoke-static {p0, v0, v1, v8, v9}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 360
    :cond_2
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Lru/fokus/tetrad/Ui;->weight(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v2, v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 361
    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 351
    if-eqz p2, :cond_9

    const/4 v0, -0x1

    :goto_6
    add-int/2addr v0, v3

    move v3, v0

    goto/16 :goto_1

    :cond_3
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lt v3, v0, :cond_0

    .line 363
    :cond_5
    return-object v6

    .line 354
    :cond_6
    :try_start_1
    iget-object v2, v0, Lru/fokus/tetrad/Mesh$Mark;->date:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 358
    :cond_7
    iget-object v1, v0, Lru/fokus/tetrad/Mesh$Mark;->form:Ljava/lang/String;

    goto :goto_4

    :cond_8
    const-string v1, ""

    goto :goto_5

    .line 351
    :cond_9
    const/4 v0, 0x1

    goto :goto_6

    .line 354
    :catch_0
    move-exception v2

    goto/16 :goto_3
.end method

.method private divider()Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 367
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 368
    sget v1, Lru/fokus/tetrad/Ui;->LINE:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 369
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    .line 370
    return-object v0
.end method

.method private four()I
    .locals 1

    .prologue
    .line 416
    sget-boolean v0, Lru/fokus/tetrad/Ui;->night:Z

    if-eqz v0, :cond_0

    const v0, -0x592696

    :goto_0
    return v0

    :cond_0
    const v0, -0xa165e4

    goto :goto_0
.end method

.method private fourBg()I
    .locals 1

    .prologue
    .line 417
    sget-boolean v0, Lru/fokus/tetrad/Ui;->night:Z

    if-eqz v0, :cond_0

    const v0, -0xd9cce6

    :goto_0
    return v0

    :cond_0
    const v0, -0x110920

    goto :goto_0
.end method

.method private load()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lru/fokus/tetrad/MarksActivity;->loading:Z

    .line 88
    iput-object v1, p0, Lru/fokus/tetrad/MarksActivity;->error:Ljava/lang/String;

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lru/fokus/tetrad/MarksActivity;->needLogin:Z

    .line 90
    iput-object v1, p0, Lru/fokus/tetrad/MarksActivity;->advice:Ljava/lang/String;

    .line 91
    invoke-direct {p0}, Lru/fokus/tetrad/MarksActivity;->render()V

    .line 92
    iget v0, p0, Lru/fokus/tetrad/MarksActivity;->gen:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lru/fokus/tetrad/MarksActivity;->gen:I

    .line 93
    invoke-direct {p0}, Lru/fokus/tetrad/MarksActivity;->range()[Ljava/lang/String;

    move-result-object v1

    .line 94
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lru/fokus/tetrad/MarksActivity$1;

    invoke-direct {v3, p0, v1, v0}, Lru/fokus/tetrad/MarksActivity$1;-><init>(Lru/fokus/tetrad/MarksActivity;[Ljava/lang/String;I)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 113
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 114
    return-void
.end method

.method private markBg(D)I
    .locals 3

    .prologue
    .line 420
    const-wide/high16 v0, 0x4012000000000000L    # 4.5

    cmpl-double v0, p1, v0

    if-ltz v0, :cond_0

    sget v0, Lru/fokus/tetrad/Ui;->OK_SOFT:I

    :goto_0
    return v0

    :cond_0
    const-wide/high16 v0, 0x400c000000000000L    # 3.5

    cmpl-double v0, p1, v0

    if-ltz v0, :cond_1

    invoke-direct {p0}, Lru/fokus/tetrad/MarksActivity;->fourBg()I

    move-result v0

    goto :goto_0

    :cond_1
    const-wide/high16 v0, 0x4004000000000000L    # 2.5

    cmpl-double v0, p1, v0

    if-ltz v0, :cond_2

    sget v0, Lru/fokus/tetrad/Ui;->WARN_SOFT:I

    goto :goto_0

    :cond_2
    sget v0, Lru/fokus/tetrad/Ui;->RED_SOFT:I

    goto :goto_0
.end method

.method private markColor(D)I
    .locals 3

    .prologue
    .line 419
    const-wide/high16 v0, 0x4012000000000000L    # 4.5

    cmpl-double v0, p1, v0

    if-ltz v0, :cond_0

    sget v0, Lru/fokus/tetrad/Ui;->OK:I

    :goto_0
    return v0

    :cond_0
    const-wide/high16 v0, 0x400c000000000000L    # 3.5

    cmpl-double v0, p1, v0

    if-ltz v0, :cond_1

    invoke-direct {p0}, Lru/fokus/tetrad/MarksActivity;->four()I

    move-result v0

    goto :goto_0

    :cond_1
    const-wide/high16 v0, 0x4004000000000000L    # 2.5

    cmpl-double v0, p1, v0

    if-ltz v0, :cond_2

    sget v0, Lru/fokus/tetrad/Ui;->WARN:I

    goto :goto_0

    :cond_2
    sget v0, Lru/fokus/tetrad/Ui;->RED:I

    goto :goto_0
.end method

.method private range()[Ljava/lang/String;
    .locals 15

    .prologue
    .line 65
    new-instance v10, Ljava/text/SimpleDateFormat;

    const-string v0, "yyyy-MM-dd"

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v10, v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 66
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v11

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v12

    .line 67
    const/4 v0, 0x1

    invoke-virtual {v11, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {v11, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 68
    const/16 v2, 0x8

    if-lt v1, v2, :cond_0

    .line 69
    :goto_0
    iget v1, p0, Lru/fokus/tetrad/MarksActivity;->period:I

    if-nez v1, :cond_1

    const/4 v0, 0x6

    const/16 v1, -0x1e

    invoke-virtual {v12, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 83
    :goto_1
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v12}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {v11}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0

    .line 68
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 70
    :cond_1
    iget v1, p0, Lru/fokus/tetrad/MarksActivity;->period:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    const/16 v1, 0x8

    const/4 v2, 0x1

    invoke-virtual {v12, v0, v1, v2}, Ljava/util/Calendar;->set(III)V

    goto :goto_1

    .line 73
    :cond_2
    const/4 v1, 0x4

    new-array v13, v1, [[I

    const/4 v1, 0x0

    const/4 v2, 0x3

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v3, 0x1

    const/16 v4, 0x8

    aput v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x1

    aput v4, v2, v3

    aput-object v2, v13, v1

    const/4 v1, 0x1

    const/4 v2, 0x3

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v3, 0x1

    const/16 v4, 0xa

    aput v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x1

    aput v4, v2, v3

    aput-object v2, v13, v1

    const/4 v1, 0x2

    const/4 v2, 0x3

    new-array v2, v2, [I

    const/4 v3, 0x0

    add-int/lit8 v4, v0, 0x1

    aput v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput v4, v2, v3

    const/4 v3, 0x2

    const/16 v4, 0xa

    aput v4, v2, v3

    aput-object v2, v13, v1

    const/4 v1, 0x3

    const/4 v2, 0x3

    new-array v2, v2, [I

    const/4 v3, 0x0

    add-int/lit8 v0, v0, 0x1

    aput v0, v2, v3

    const/4 v0, 0x1

    const/4 v3, 0x2

    aput v3, v2, v0

    const/4 v0, 0x2

    const/16 v3, 0x19

    aput v3, v2, v0

    aput-object v2, v13, v1

    .line 75
    const/4 v0, 0x0

    aget-object v8, v13, v0

    .line 76
    array-length v14, v13

    const/4 v0, 0x0

    move v9, v0

    :goto_2
    if-ge v9, v14, :cond_3

    aget-object v7, v13, v9

    .line 77
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 78
    const/4 v1, 0x0

    aget v1, v7, v1

    const/4 v2, 0x1

    aget v2, v7, v2

    const/4 v3, 0x2

    aget v3, v7, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 79
    invoke-virtual {v0, v11}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    move-object v0, v7

    .line 76
    :goto_3
    add-int/lit8 v1, v9, 0x1

    move v9, v1

    move-object v8, v0

    goto :goto_2

    .line 81
    :cond_3
    const/4 v0, 0x0

    aget v0, v8, v0

    const/4 v1, 0x1

    aget v1, v8, v1

    const/4 v2, 0x2

    aget v2, v8, v2

    invoke-virtual {v12, v0, v1, v2}, Ljava/util/Calendar;->set(III)V

    goto/16 :goto_1

    :cond_4
    move-object v0, v8

    goto :goto_3
.end method

.method private render()V
    .locals 12

    .prologue
    .line 124
    iget-object v0, p0, Lru/fokus/tetrad/MarksActivity;->content:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 125
    iget-object v0, p0, Lru/fokus/tetrad/MarksActivity;->content:Landroid/widget/LinearLayout;

    const-string v1, "\u041e\u0446\u0435\u043d\u043a\u0438"

    invoke-static {p0, v1}, Lru/fokus/tetrad/Ui;->header(Landroid/app/Activity;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 127
    iget-boolean v0, p0, Lru/fokus/tetrad/MarksActivity;->needLogin:Z

    if-eqz v0, :cond_2

    .line 128
    invoke-static {p0}, Lru/fokus/tetrad/Ui;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 129
    const-string v0, "\u041d\u0443\u0436\u0435\u043d \u0432\u0445\u043e\u0434 \u0432 \u041c\u042d\u0428"

    invoke-static {p0, v0}, Lru/fokus/tetrad/Ui;->title(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 130
    iget-object v0, p0, Lru/fokus/tetrad/MarksActivity;->error:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lru/fokus/tetrad/MarksActivity;->error:Ljava/lang/String;

    :goto_0
    const/high16 v2, 0x41700000    # 15.0f

    sget v3, Lru/fokus/tetrad/Ui;->MUTED:I

    sget-object v4, Lru/fokus/tetrad/Ui;->BODY:Landroid/graphics/Typeface;

    invoke-static {p0, v0, v2, v3, v4}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 131
    const-string v0, "\u0412\u043e\u0439\u0442\u0438 \u0432 \u041c\u042d\u0428"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p0, v0, v2, v3}, Lru/fokus/tetrad/Ui;->button(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v0

    .line 132
    new-instance v2, Lru/fokus/tetrad/MarksActivity$2;

    invoke-direct {v2, p0}, Lru/fokus/tetrad/MarksActivity$2;-><init>(Lru/fokus/tetrad/MarksActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    invoke-static {}, Lru/fokus/tetrad/Ui;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 136
    iget-object v0, p0, Lru/fokus/tetrad/MarksActivity;->content:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 253
    :cond_0
    :goto_1
    return-void

    .line 130
    :cond_1
    const-string v0, "\u041e\u0446\u0435\u043d\u043a\u0438 \u0431\u0435\u0440\u0443\u0442\u0441\u044f \u0438\u0437 \u044d\u043b\u0435\u043a\u0442\u0440\u043e\u043d\u043d\u043e\u0433\u043e \u0434\u043d\u0435\u0432\u043d\u0438\u043a\u0430. \u0412\u043e\u0439\u0434\u0438 \u043e\u0434\u0438\u043d \u0440\u0430\u0437 \u2014 \u043d\u0430 \u043d\u0430\u0441\u0442\u043e\u044f\u0449\u0435\u043c \u0441\u0430\u0439\u0442\u0435 mos.ru."

    goto :goto_0

    .line 140
    :cond_2
    new-instance v2, Landroid/widget/HorizontalScrollView;

    invoke-direct {v2, p0}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 141
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/widget/HorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 142
    const/16 v0, 0x8

    invoke-static {p0, v0}, Lru/fokus/tetrad/Ui;->row(Landroid/content/Context;I)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 143
    const/4 v0, 0x0

    :goto_2
    sget-object v1, Lru/fokus/tetrad/MarksActivity;->PERIODS:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_4

    .line 145
    sget-object v1, Lru/fokus/tetrad/MarksActivity;->PERIODS:[Ljava/lang/String;

    aget-object v4, v1, v0

    iget v1, p0, Lru/fokus/tetrad/MarksActivity;->period:I

    if-ne v0, v1, :cond_3

    const/4 v1, 0x1

    :goto_3
    invoke-static {p0, v4, v1}, Lru/fokus/tetrad/Ui;->chip(Landroid/content/Context;Ljava/lang/String;Z)Landroid/widget/TextView;

    move-result-object v1

    .line 146
    new-instance v4, Lru/fokus/tetrad/MarksActivity$3;

    invoke-direct {v4, p0, v0}, Lru/fokus/tetrad/MarksActivity$3;-><init>(Lru/fokus/tetrad/MarksActivity;I)V

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 143
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 145
    :cond_3
    const/4 v1, 0x0

    goto :goto_3

    .line 154
    :cond_4
    invoke-virtual {v2, v3}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;)V

    .line 155
    iget-object v0, p0, Lru/fokus/tetrad/MarksActivity;->content:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 157
    iget-boolean v0, p0, Lru/fokus/tetrad/MarksActivity;->loading:Z

    if-eqz v0, :cond_5

    .line 158
    invoke-static {p0}, Lru/fokus/tetrad/Ui;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 159
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 160
    new-instance v1, Landroid/widget/ProgressBar;

    invoke-direct {v1, p0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x42100000    # 36.0f

    invoke-static {v3}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v3

    const/high16 v4, 0x42100000    # 36.0f

    invoke-static {v4}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 161
    const-string v1, "\u0417\u0430\u0433\u0440\u0443\u0436\u0430\u044e \u043e\u0446\u0435\u043d\u043a\u0438 \u0438\u0437 \u041c\u042d\u0428\u2026"

    const/high16 v2, 0x41700000    # 15.0f

    sget v3, Lru/fokus/tetrad/Ui;->MUTED:I

    sget-object v4, Lru/fokus/tetrad/Ui;->BODY:Landroid/graphics/Typeface;

    invoke-static {p0, v1, v2, v3, v4}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v1

    .line 162
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 163
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 164
    iget-object v1, p0, Lru/fokus/tetrad/MarksActivity;->content:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 167
    :cond_5
    iget-object v0, p0, Lru/fokus/tetrad/MarksActivity;->error:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 168
    invoke-static {p0}, Lru/fokus/tetrad/Ui;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 169
    iget-object v1, p0, Lru/fokus/tetrad/MarksActivity;->error:Ljava/lang/String;

    const/high16 v2, 0x41700000    # 15.0f

    sget v3, Lru/fokus/tetrad/Ui;->RED:I

    sget-object v4, Lru/fokus/tetrad/Ui;->MEDIUM:Landroid/graphics/Typeface;

    invoke-static {p0, v1, v2, v3, v4}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 170
    const-string v1, "\u041f\u043e\u043f\u0440\u043e\u0431\u043e\u0432\u0430\u0442\u044c \u0435\u0449\u0451 \u0440\u0430\u0437"

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p0, v1, v2, v3}, Lru/fokus/tetrad/Ui;->button(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v1

    .line 171
    new-instance v2, Lru/fokus/tetrad/MarksActivity$4;

    invoke-direct {v2, p0}, Lru/fokus/tetrad/MarksActivity$4;-><init>(Lru/fokus/tetrad/MarksActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    invoke-static {}, Lru/fokus/tetrad/Ui;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 173
    iget-object v1, p0, Lru/fokus/tetrad/MarksActivity;->content:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_1

    .line 176
    :cond_6
    iget-object v0, p0, Lru/fokus/tetrad/MarksActivity;->subjects:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lru/fokus/tetrad/MarksActivity;->subjects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 178
    invoke-static {p0}, Lru/fokus/tetrad/Ui;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 179
    const-string v1, "\u0417\u0430 \u044d\u0442\u043e\u0442 \u043f\u0435\u0440\u0438\u043e\u0434 \u043e\u0446\u0435\u043d\u043e\u043a \u043d\u0435\u0442."

    const/high16 v2, 0x41700000    # 15.0f

    sget v3, Lru/fokus/tetrad/Ui;->MUTED:I

    sget-object v4, Lru/fokus/tetrad/Ui;->BODY:Landroid/graphics/Typeface;

    invoke-static {p0, v1, v2, v3, v4}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 180
    iget-object v1, p0, Lru/fokus/tetrad/MarksActivity;->content:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_1

    .line 185
    :cond_7
    const/16 v0, 0x8

    invoke-static {p0, v0}, Lru/fokus/tetrad/Ui;->row(Landroid/content/Context;I)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 186
    const/4 v0, 0x3

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "\u041f\u043e \u043f\u0440\u0435\u0434\u043c\u0435\u0442\u0430\u043c"

    aput-object v1, v3, v0

    const/4 v0, 0x1

    const-string v1, "\u041f\u043e \u0434\u0430\u0442\u0430\u043c"

    aput-object v1, v3, v0

    const/4 v0, 0x2

    const-string v1, "\u0410\u043d\u0430\u043b\u0438\u0437"

    aput-object v1, v3, v0

    .line 187
    const/4 v0, 0x0

    :goto_4
    array-length v1, v3

    if-ge v0, v1, :cond_9

    .line 189
    aget-object v4, v3, v0

    iget v1, p0, Lru/fokus/tetrad/MarksActivity;->view:I

    if-ne v0, v1, :cond_8

    const/4 v1, 0x1

    :goto_5
    invoke-static {p0, v4, v1}, Lru/fokus/tetrad/Ui;->chip(Landroid/content/Context;Ljava/lang/String;Z)Landroid/widget/TextView;

    move-result-object v1

    .line 190
    new-instance v4, Lru/fokus/tetrad/MarksActivity$5;

    invoke-direct {v4, p0, v0}, Lru/fokus/tetrad/MarksActivity$5;-><init>(Lru/fokus/tetrad/MarksActivity;I)V

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 187
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 189
    :cond_8
    const/4 v1, 0x0

    goto :goto_5

    .line 197
    :cond_9
    new-instance v0, Landroid/widget/HorizontalScrollView;

    invoke-direct {v0, p0}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 198
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 199
    invoke-virtual {v0, v2}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;)V

    .line 200
    iget-object v1, p0, Lru/fokus/tetrad/MarksActivity;->content:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 201
    iget v0, p0, Lru/fokus/tetrad/MarksActivity;->view:I

    if-nez v0, :cond_a

    invoke-direct {p0}, Lru/fokus/tetrad/MarksActivity;->renderBySubject()V

    goto/16 :goto_1

    .line 202
    :cond_a
    iget v0, p0, Lru/fokus/tetrad/MarksActivity;->view:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b

    invoke-direct {p0}, Lru/fokus/tetrad/MarksActivity;->renderByDate()V

    goto/16 :goto_1

    .line 205
    :cond_b
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 206
    iget-object v1, p0, Lru/fokus/tetrad/MarksActivity;->subjects:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/fokus/tetrad/Grades$Subject;

    iget v5, v0, Lru/fokus/tetrad/Grades$Subject;->status:I

    if-nez v5, :cond_c

    add-int/lit8 v3, v3, 0x1

    move v0, v1

    :goto_7
    move v1, v0

    goto :goto_6

    :cond_c
    iget v0, v0, Lru/fokus/tetrad/Grades$Subject;->status:I

    const/4 v5, 0x1

    if-ne v0, v5, :cond_d

    add-int/lit8 v2, v2, 0x1

    move v0, v1

    goto :goto_7

    :cond_d
    add-int/lit8 v1, v1, 0x1

    move v0, v1

    goto :goto_7

    .line 207
    :cond_e
    invoke-static {p0}, Lru/fokus/tetrad/Ui;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 208
    const/16 v4, 0x10

    invoke-static {p0, v4}, Lru/fokus/tetrad/Ui;->row(Landroid/content/Context;I)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 209
    iget-wide v6, p0, Lru/fokus/tetrad/MarksActivity;->overall:D

    invoke-static {v6, v7}, Lru/fokus/tetrad/Grades;->fmt(D)Ljava/lang/String;

    move-result-object v5

    const/high16 v6, 0x42200000    # 40.0f

    iget-wide v8, p0, Lru/fokus/tetrad/MarksActivity;->overall:D

    invoke-direct {p0, v8, v9}, Lru/fokus/tetrad/MarksActivity;->colorFor(D)I

    move-result v7

    sget-object v8, Lru/fokus/tetrad/Ui;->DISPLAY:Landroid/graphics/Typeface;

    invoke-static {p0, v5, v6, v7, v8}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v5

    .line 210
    const-string v6, "tnum"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setFontFeatureSettings(Ljava/lang/String;)V

    .line 211
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 212
    const/4 v5, 0x2

    invoke-static {p0, v5}, Lru/fokus/tetrad/Ui;->col(Landroid/content/Context;I)Landroid/widget/LinearLayout;

    move-result-object v5

    .line 213
    const-string v6, "\u0421\u0440\u0435\u0434\u043d\u0438\u0439 \u0431\u0430\u043b\u043b"

    const/high16 v7, 0x41700000    # 15.0f

    sget v8, Lru/fokus/tetrad/Ui;->FG:I

    sget-object v9, Lru/fokus/tetrad/Ui;->BOLD:Landroid/graphics/Typeface;

    invoke-static {p0, v6, v7, v8, v9}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 214
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p0, Lru/fokus/tetrad/MarksActivity;->total:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lru/fokus/tetrad/MarksActivity;->total:I

    int-to-long v8, v7

    const-string v7, "\u043e\u0446\u0435\u043d\u043a\u0430"

    const-string v10, "\u043e\u0446\u0435\u043d\u043a\u0438"

    const-string v11, "\u043e\u0446\u0435\u043d\u043e\u043a"

    invoke-static {v8, v9, v7, v10, v11}, Lru/fokus/tetrad/Ui;->plural(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " \u00b7 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lru/fokus/tetrad/MarksActivity;->subjects:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lru/fokus/tetrad/MarksActivity;->subjects:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    int-to-long v8, v7

    const-string v7, "\u043f\u0440\u0435\u0434\u043c\u0435\u0442"

    const-string v10, "\u043f\u0440\u0435\u0434\u043c\u0435\u0442\u0430"

    const-string v11, "\u043f\u0440\u0435\u0434\u043c\u0435\u0442\u043e\u0432"

    invoke-static {v8, v9, v7, v10, v11}, Lru/fokus/tetrad/Ui;->plural(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/high16 v7, 0x41500000    # 13.0f

    sget v8, Lru/fokus/tetrad/Ui;->MUTED:I

    sget-object v9, Lru/fokus/tetrad/Ui;->BODY:Landroid/graphics/Typeface;

    invoke-static {p0, v6, v7, v8, v9}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 215
    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v6}, Lru/fokus/tetrad/Ui;->weight(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 216
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 217
    const/16 v4, 0x8

    invoke-static {p0, v4}, Lru/fokus/tetrad/Ui;->row(Landroid/content/Context;I)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 218
    if-lez v3, :cond_f

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u041b\u0435\u0433\u043a\u043e: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v5, Lru/fokus/tetrad/Ui;->OK:I

    sget v6, Lru/fokus/tetrad/Ui;->OK_SOFT:I

    invoke-static {p0, v3, v5, v6}, Lru/fokus/tetrad/Ui;->pill(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 219
    :cond_f
    if-lez v2, :cond_10

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u0421\u0442\u0430\u0431\u0438\u043b\u044c\u043d\u043e: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget v3, Lru/fokus/tetrad/Ui;->INK:I

    sget v5, Lru/fokus/tetrad/Ui;->INK_SOFT:I

    invoke-static {p0, v2, v3, v5}, Lru/fokus/tetrad/Ui;->pill(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 220
    :cond_10
    if-lez v1, :cond_11

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u041f\u043e\u0434\u0442\u044f\u043d\u0443\u0442\u044c: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget v2, Lru/fokus/tetrad/Ui;->RED:I

    sget v3, Lru/fokus/tetrad/Ui;->RED_SOFT:I

    invoke-static {p0, v1, v2, v3}, Lru/fokus/tetrad/Ui;->pill(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 221
    :cond_11
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 222
    iget-object v1, p0, Lru/fokus/tetrad/MarksActivity;->content:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 225
    invoke-static {p0}, Lru/fokus/tetrad/Ui;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 226
    const-string v1, "\u0421\u043e\u0432\u0435\u0442 \u0443\u0447\u0438\u0442\u0435\u043b\u044f"

    invoke-static {p0, v1}, Lru/fokus/tetrad/Ui;->title(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 227
    iget-object v1, p0, Lru/fokus/tetrad/MarksActivity;->advice:Ljava/lang/String;

    if-eqz v1, :cond_13

    .line 228
    iget-object v1, p0, Lru/fokus/tetrad/MarksActivity;->advice:Ljava/lang/String;

    const/high16 v2, 0x41700000    # 15.0f

    sget v3, Lru/fokus/tetrad/Ui;->FG:I

    sget-object v4, Lru/fokus/tetrad/Ui;->BODY:Landroid/graphics/Typeface;

    invoke-static {p0, v1, v2, v3, v4}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v1

    .line 229
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    .line 230
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 245
    :cond_12
    :goto_8
    iget-object v1, p0, Lru/fokus/tetrad/MarksActivity;->content:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 246
    const-string v0, "\u041d\u0443\u0436\u043d\u043e \u043f\u043e\u0434\u0442\u044f\u043d\u0443\u0442\u044c"

    const-string v1, "\u0417\u0434\u0435\u0441\u044c \u0441\u0442\u043e\u0438\u0442 \u0437\u0430\u043d\u0438\u043c\u0430\u0442\u044c\u0441\u044f \u0431\u043e\u043b\u044c\u0448\u0435 \u0432\u0441\u0435\u0433\u043e"

    const/4 v2, 0x2

    sget v3, Lru/fokus/tetrad/Ui;->RED:I

    invoke-direct {p0, v0, v1, v2, v3}, Lru/fokus/tetrad/MarksActivity;->section(Ljava/lang/String;Ljava/lang/String;II)V

    .line 247
    const-string v0, "\u0421\u0442\u0430\u0431\u0438\u043b\u044c\u043d\u043e"

    const-string v1, "\u0414\u0435\u0440\u0436\u0438\u0442\u0441\u044f \u0440\u043e\u0432\u043d\u043e \u2014 \u043c\u043e\u0436\u043d\u043e \u043f\u043e\u0434\u043d\u044f\u0442\u044c \u0434\u043e \u00ab5\u00bb"

    const/4 v2, 0x1

    sget v3, Lru/fokus/tetrad/Ui;->INK:I

    invoke-direct {p0, v0, v1, v2, v3}, Lru/fokus/tetrad/MarksActivity;->section(Ljava/lang/String;Ljava/lang/String;II)V

    .line 248
    const-string v0, "\u0418\u0434\u0451\u0442 \u043b\u0435\u0433\u043a\u043e"

    const-string v1, "\u0422\u0443\u0442 \u0432\u0441\u0451 \u0445\u043e\u0440\u043e\u0448\u043e"

    const/4 v2, 0x0

    sget v3, Lru/fokus/tetrad/Ui;->OK:I

    invoke-direct {p0, v0, v1, v2, v3}, Lru/fokus/tetrad/MarksActivity;->section(Ljava/lang/String;Ljava/lang/String;II)V

    .line 250
    const-string v0, "\u0421\u0440\u0435\u0434\u043d\u0438\u0439 \u0431\u0430\u043b\u043b \u0441\u0447\u0438\u0442\u0430\u0435\u0442\u0441\u044f \u0441 \u0443\u0447\u0451\u0442\u043e\u043c \u0432\u0435\u0441\u0430 \u043e\u0446\u0435\u043d\u043e\u043a. \u0413\u0440\u0430\u043d\u0438\u0446\u044b \u0447\u0435\u0442\u0432\u0435\u0440\u0442\u0435\u0439 \u043f\u0440\u0438\u043c\u0435\u0440\u043d\u044b\u0435; \u0438\u0442\u043e\u0433\u043e\u0432\u0443\u044e \u043e\u0446\u0435\u043d\u043a\u0443 \u0432\u044b\u0441\u0442\u0430\u0432\u043b\u044f\u0435\u0442 \u0443\u0447\u0438\u0442\u0435\u043b\u044c."

    const/high16 v1, 0x41400000    # 12.0f

    sget v2, Lru/fokus/tetrad/Ui;->MUTED:I

    sget-object v3, Lru/fokus/tetrad/Ui;->BODY:Landroid/graphics/Typeface;

    invoke-static {p0, v0, v1, v2, v3}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v0

    .line 251
    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v1}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v1

    const/4 v2, 0x0

    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {v3}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 252
    iget-object v1, p0, Lru/fokus/tetrad/MarksActivity;->content:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_1

    .line 231
    :cond_13
    iget-boolean v1, p0, Lru/fokus/tetrad/MarksActivity;->adviceBusy:Z

    if-eqz v1, :cond_14

    .line 232
    const/16 v1, 0xa

    invoke-static {p0, v1}, Lru/fokus/tetrad/Ui;->row(Landroid/content/Context;I)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 233
    new-instance v2, Landroid/widget/ProgressBar;

    invoke-direct {v2, p0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x41b00000    # 22.0f

    invoke-static {v4}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v4

    const/high16 v5, 0x41b00000    # 22.0f

    invoke-static {v5}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 234
    const-string v2, "\u0418\u0418 \u0441\u043c\u043e\u0442\u0440\u0438\u0442 \u043d\u0430 \u043e\u0446\u0435\u043d\u043a\u0438\u2026"

    const/high16 v3, 0x41600000    # 14.0f

    sget v4, Lru/fokus/tetrad/Ui;->MUTED:I

    sget-object v5, Lru/fokus/tetrad/Ui;->BODY:Landroid/graphics/Typeface;

    invoke-static {p0, v2, v3, v4, v5}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 235
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_8

    .line 237
    :cond_14
    const-string v1, "\u0418\u0418 \u043f\u043e\u0441\u043c\u043e\u0442\u0440\u0438\u0442 \u043d\u0430 \u043e\u0446\u0435\u043d\u043a\u0438 \u0438 \u043f\u043e\u0434\u0441\u043a\u0430\u0436\u0435\u0442, \u043d\u0430 \u043a\u0430\u043a\u0438\u0435 \u043f\u0440\u0435\u0434\u043c\u0435\u0442\u044b \u0438 \u0442\u0435\u043c\u044b \u043e\u0431\u0440\u0430\u0442\u0438\u0442\u044c \u0432\u043d\u0438\u043c\u0430\u043d\u0438\u0435 \u0432 \u043f\u0435\u0440\u0432\u0443\u044e \u043e\u0447\u0435\u0440\u0435\u0434\u044c."

    const/high16 v2, 0x41600000    # 14.0f

    sget v3, Lru/fokus/tetrad/Ui;->MUTED:I

    sget-object v4, Lru/fokus/tetrad/Ui;->BODY:Landroid/graphics/Typeface;

    invoke-static {p0, v1, v2, v3, v4}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 238
    const-string v1, "\u041f\u043e\u043b\u0443\u0447\u0438\u0442\u044c \u0441\u043e\u0432\u0435\u0442"

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p0, v1, v2, v3}, Lru/fokus/tetrad/Ui;->button(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v1

    .line 239
    iget-object v2, p0, Lru/fokus/tetrad/MarksActivity;->store:Lru/fokus/tetrad/Store;

    invoke-virtual {v2}, Lru/fokus/tetrad/Store;->aiReady()Z

    move-result v2

    invoke-static {v1, v2}, Lru/fokus/tetrad/Ui;->setEnabled(Landroid/view/View;Z)V

    .line 240
    new-instance v2, Lru/fokus/tetrad/MarksActivity$6;

    invoke-direct {v2, p0}, Lru/fokus/tetrad/MarksActivity$6;-><init>(Lru/fokus/tetrad/MarksActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    invoke-static {}, Lru/fokus/tetrad/Ui;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 242
    iget-object v1, p0, Lru/fokus/tetrad/MarksActivity;->store:Lru/fokus/tetrad/Store;

    invoke-virtual {v1}, Lru/fokus/tetrad/Store;->aiReady()Z

    move-result v1

    if-nez v1, :cond_12

    const-string v1, "\u041d\u0443\u0436\u0435\u043d \u043f\u043e\u0434\u043a\u043b\u044e\u0447\u0451\u043d\u043d\u044b\u0439 \u0418\u0418 (\u2699 \u2192 \u0418\u0418-\u043f\u0440\u043e\u0432\u0435\u0440\u043a\u0430)."

    const/high16 v2, 0x41500000    # 13.0f

    sget v3, Lru/fokus/tetrad/Ui;->MUTED:I

    sget-object v4, Lru/fokus/tetrad/Ui;->BODY:Landroid/graphics/Typeface;

    invoke-static {p0, v1, v2, v3, v4}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_8
.end method

.method private renderByDate()V
    .locals 15

    .prologue
    const/high16 v14, 0x41600000    # 14.0f

    const/high16 v13, 0x41500000    # 13.0f

    const/high16 v12, 0x41200000    # 10.0f

    const/high16 v11, 0x40c00000    # 6.0f

    const/4 v10, 0x0

    .line 315
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lru/fokus/tetrad/MarksActivity;->allMarks:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 316
    new-instance v1, Lru/fokus/tetrad/MarksActivity$9;

    invoke-direct {v1, p0}, Lru/fokus/tetrad/MarksActivity$9;-><init>(Lru/fokus/tetrad/MarksActivity;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 319
    const/4 v3, 0x0

    .line 320
    const/4 v1, 0x0

    .line 321
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/fokus/tetrad/Mesh$Mark;

    .line 322
    iget-object v2, v0, Lru/fokus/tetrad/Mesh$Mark;->date:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v5, 0xa

    if-lt v2, v5, :cond_2

    iget-object v2, v0, Lru/fokus/tetrad/Mesh$Mark;->date:Ljava/lang/String;

    const/16 v5, 0xa

    invoke-virtual {v2, v10, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 323
    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 325
    invoke-static {v2}, Lru/fokus/tetrad/Mesh;->dayLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/high16 v3, 0x41700000    # 15.0f

    sget v5, Lru/fokus/tetrad/Ui;->MUTED:I

    sget-object v6, Lru/fokus/tetrad/Ui;->BOLD:Landroid/graphics/Typeface;

    invoke-static {p0, v1, v3, v5, v6}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v1

    .line 326
    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {v3}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v3

    invoke-static {v11}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v5

    invoke-virtual {v1, v3, v5, v10, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 327
    iget-object v3, p0, Lru/fokus/tetrad/MarksActivity;->content:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 328
    invoke-static {p0}, Lru/fokus/tetrad/Ui;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 329
    invoke-static {v14}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v3

    invoke-static {v11}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v5

    invoke-static {v14}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v6

    invoke-static {v11}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v7

    invoke-virtual {v1, v3, v5, v6, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 330
    invoke-direct {p0}, Lru/fokus/tetrad/MarksActivity;->divider()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 331
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setShowDividers(I)V

    .line 332
    iget-object v3, p0, Lru/fokus/tetrad/MarksActivity;->content:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 334
    :goto_2
    const/16 v3, 0xc

    invoke-static {p0, v3}, Lru/fokus/tetrad/Ui;->row(Landroid/content/Context;I)Landroid/widget/LinearLayout;

    move-result-object v5

    .line 335
    invoke-static {v12}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v3

    invoke-static {v12}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v6

    invoke-virtual {v5, v10, v3, v10, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 336
    const/16 v3, 0x24

    invoke-direct {p0, v0, v3}, Lru/fokus/tetrad/MarksActivity;->badge(Lru/fokus/tetrad/Mesh$Mark;I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 337
    const/4 v3, 0x2

    invoke-static {p0, v3}, Lru/fokus/tetrad/Ui;->col(Landroid/content/Context;I)Landroid/widget/LinearLayout;

    move-result-object v6

    .line 338
    iget-object v3, v0, Lru/fokus/tetrad/Mesh$Mark;->subject:Ljava/lang/String;

    const/high16 v7, 0x41700000    # 15.0f

    sget v8, Lru/fokus/tetrad/Ui;->FG:I

    sget-object v9, Lru/fokus/tetrad/Ui;->BOLD:Landroid/graphics/Typeface;

    invoke-static {p0, v3, v7, v8, v9}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 339
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lru/fokus/tetrad/Mesh$Mark;->form:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, v0, Lru/fokus/tetrad/Mesh$Mark;->form:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_0
    const-string v3, "\u041e\u0446\u0435\u043d\u043a\u0430"

    :goto_3
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v3, v0, Lru/fokus/tetrad/Mesh$Mark;->weight:I

    const/4 v8, 0x1

    if-le v3, v8, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " \u00b7 \u0432\u0435\u0441 "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v8, v0, Lru/fokus/tetrad/Mesh$Mark;->weight:I

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_4
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 340
    sget v7, Lru/fokus/tetrad/Ui;->MUTED:I

    sget-object v8, Lru/fokus/tetrad/Ui;->BODY:Landroid/graphics/Typeface;

    invoke-static {p0, v3, v13, v7, v8}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 341
    iget-object v3, v0, Lru/fokus/tetrad/Mesh$Mark;->comment:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, v0, Lru/fokus/tetrad/Mesh$Mark;->comment:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u00ab"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, v0, Lru/fokus/tetrad/Mesh$Mark;->comment:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\u00bb"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v3, Lru/fokus/tetrad/Ui;->FG:I

    sget-object v7, Lru/fokus/tetrad/Ui;->BODY:Landroid/graphics/Typeface;

    invoke-static {p0, v0, v13, v3, v7}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 342
    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Lru/fokus/tetrad/Ui;->weight(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v5, v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 343
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object v3, v2

    .line 344
    goto/16 :goto_0

    .line 322
    :cond_2
    iget-object v2, v0, Lru/fokus/tetrad/Mesh$Mark;->date:Ljava/lang/String;

    goto/16 :goto_1

    .line 339
    :cond_3
    iget-object v3, v0, Lru/fokus/tetrad/Mesh$Mark;->form:Ljava/lang/String;

    goto :goto_3

    :cond_4
    const-string v3, ""

    goto :goto_4

    .line 345
    :cond_5
    return-void

    :cond_6
    move-object v2, v3

    goto/16 :goto_2
.end method

.method private renderBySubject()V
    .locals 11

    .prologue
    .line 275
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lru/fokus/tetrad/MarksActivity;->subjects:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 276
    new-instance v1, Lru/fokus/tetrad/MarksActivity$7;

    invoke-direct {v1, p0}, Lru/fokus/tetrad/MarksActivity$7;-><init>(Lru/fokus/tetrad/MarksActivity;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 279
    invoke-static {p0}, Lru/fokus/tetrad/Ui;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 280
    const/high16 v1, 0x41600000    # 14.0f

    invoke-static {v1}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v1

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v3}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v3

    const/high16 v4, 0x41600000    # 14.0f

    invoke-static {v4}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v4

    const/high16 v5, 0x41000000    # 8.0f

    invoke-static {v5}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v5

    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 281
    invoke-direct {p0}, Lru/fokus/tetrad/MarksActivity;->divider()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 282
    const/4 v1, 0x2

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setShowDividers(I)V

    .line 283
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/fokus/tetrad/Grades$Subject;

    .line 284
    iget-object v1, p0, Lru/fokus/tetrad/MarksActivity;->expanded:Ljava/util/Set;

    iget-object v4, v0, Lru/fokus/tetrad/Grades$Subject;->name:Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    .line 285
    const/16 v1, 0x8

    invoke-static {p0, v1}, Lru/fokus/tetrad/Ui;->col(Landroid/content/Context;I)Landroid/widget/LinearLayout;

    move-result-object v5

    .line 286
    const/4 v1, 0x0

    const/high16 v6, 0x41400000    # 12.0f

    invoke-static {v6}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v6

    const/4 v7, 0x0

    const/high16 v8, 0x41400000    # 12.0f

    invoke-static {v8}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v8

    invoke-virtual {v5, v1, v6, v7, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 287
    const/4 v1, 0x1

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 288
    const/4 v1, 0x0

    const/high16 v6, 0x41000000    # 8.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v1, v6, v7, v8}, Lru/fokus/tetrad/Ui;->round(IFIF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    const v6, 0x22808080

    const/high16 v7, 0x41000000    # 8.0f

    invoke-static {v1, v6, v7}, Lru/fokus/tetrad/Ui;->ripple(Landroid/graphics/drawable/Drawable;IF)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 289
    new-instance v1, Lru/fokus/tetrad/MarksActivity$8;

    invoke-direct {v1, p0, v4, v0}, Lru/fokus/tetrad/MarksActivity$8;-><init>(Lru/fokus/tetrad/MarksActivity;ZLru/fokus/tetrad/Grades$Subject;)V

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 293
    const/16 v1, 0xa

    invoke-static {p0, v1}, Lru/fokus/tetrad/Ui;->row(Landroid/content/Context;I)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 294
    iget-object v6, v0, Lru/fokus/tetrad/Grades$Subject;->name:Ljava/lang/String;

    const/high16 v7, 0x41800000    # 16.0f

    sget v8, Lru/fokus/tetrad/Ui;->FG:I

    sget-object v9, Lru/fokus/tetrad/Ui;->BOLD:Landroid/graphics/Typeface;

    invoke-static {p0, v6, v7, v8, v9}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v6

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v7}, Lru/fokus/tetrad/Ui;->weight(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 295
    iget-wide v6, v0, Lru/fokus/tetrad/Grades$Subject;->avg:D

    invoke-static {v6, v7}, Lru/fokus/tetrad/Grades;->fmt(D)Ljava/lang/String;

    move-result-object v6

    const/high16 v7, 0x41800000    # 16.0f

    sget v8, Lru/fokus/tetrad/Ui;->ON_INK:I

    sget-object v9, Lru/fokus/tetrad/Ui;->BOLD:Landroid/graphics/Typeface;

    invoke-static {p0, v6, v7, v8, v9}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v6

    .line 296
    const-string v7, "tnum"

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setFontFeatureSettings(Ljava/lang/String;)V

    .line 297
    const/16 v7, 0x11

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 298
    const/high16 v7, 0x41000000    # 8.0f

    invoke-static {v7}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v7

    const/high16 v8, 0x40400000    # 3.0f

    invoke-static {v8}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v8

    const/high16 v9, 0x41000000    # 8.0f

    invoke-static {v9}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v9

    const/high16 v10, 0x40400000    # 3.0f

    invoke-static {v10}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v10

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 299
    iget-wide v8, v0, Lru/fokus/tetrad/Grades$Subject;->avg:D

    invoke-direct {p0, v8, v9}, Lru/fokus/tetrad/MarksActivity;->colorFor(D)I

    move-result v7

    const v8, 0x4479c000    # 999.0f

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v7, v8, v9, v10}, Lru/fokus/tetrad/Ui;->round(IFIF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 300
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 301
    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 302
    new-instance v6, Lru/fokus/tetrad/MarksActivity$Flow;

    const/high16 v1, 0x40c00000    # 6.0f

    invoke-static {v1}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v1

    invoke-direct {v6, p0, v1}, Lru/fokus/tetrad/MarksActivity$Flow;-><init>(Landroid/content/Context;I)V

    .line 303
    iget-object v1, v0, Lru/fokus/tetrad/Grades$Subject;->marks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lru/fokus/tetrad/Mesh$Mark;

    const/16 v8, 0x20

    invoke-direct {p0, v1, v8}, Lru/fokus/tetrad/MarksActivity;->badge(Lru/fokus/tetrad/Mesh$Mark;I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v6, v1}, Lru/fokus/tetrad/MarksActivity$Flow;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 304
    :cond_0
    invoke-static {}, Lru/fokus/tetrad/Ui;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v5, v6, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 305
    if-eqz v4, :cond_1

    iget-object v0, v0, Lru/fokus/tetrad/Grades$Subject;->marks:Ljava/util/List;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lru/fokus/tetrad/MarksActivity;->details(Ljava/util/List;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 306
    :cond_1
    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 308
    :cond_2
    iget-object v0, p0, Lru/fokus/tetrad/MarksActivity;->content:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 309
    const-string v0, "\u041d\u0430\u0436\u043c\u0438 \u043d\u0430 \u043f\u0440\u0435\u0434\u043c\u0435\u0442, \u0447\u0442\u043e\u0431\u044b \u0443\u0432\u0438\u0434\u0435\u0442\u044c \u0434\u0430\u0442\u044b, \u0432\u0438\u0434\u044b \u0440\u0430\u0431\u043e\u0442 \u0438 \u043a\u043e\u043c\u043c\u0435\u043d\u0442\u0430\u0440\u0438\u0438. \u041c\u0430\u043b\u0435\u043d\u044c\u043a\u0430\u044f \u0446\u0438\u0444\u0440\u0430 \u0432 \u0443\u0433\u043b\u0443 \u2014 \u0432\u0435\u0441 \u043e\u0446\u0435\u043d\u043a\u0438."

    const/high16 v1, 0x41400000    # 12.0f

    sget v2, Lru/fokus/tetrad/Ui;->MUTED:I

    sget-object v3, Lru/fokus/tetrad/Ui;->BODY:Landroid/graphics/Typeface;

    invoke-static {p0, v0, v1, v2, v3}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v0

    .line 310
    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v1}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v1

    const/4 v2, 0x0

    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {v3}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 311
    iget-object v1, p0, Lru/fokus/tetrad/MarksActivity;->content:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 312
    return-void
.end method

.method private section(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 403
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 404
    iget-object v0, p0, Lru/fokus/tetrad/MarksActivity;->subjects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/fokus/tetrad/Grades$Subject;

    iget v3, v0, Lru/fokus/tetrad/Grades$Subject;->status:I

    if-ne v3, p3, :cond_0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 405
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 413
    :cond_2
    return-void

    .line 406
    :cond_3
    invoke-static {p0, v4}, Lru/fokus/tetrad/Ui;->col(Landroid/content/Context;I)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 407
    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v2}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v2

    const/high16 v3, 0x40c00000    # 6.0f

    invoke-static {v3}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v3

    invoke-virtual {v0, v2, v3, v4, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 408
    const/high16 v2, 0x41900000    # 18.0f

    sget-object v3, Lru/fokus/tetrad/Ui;->BOLD:Landroid/graphics/Typeface;

    invoke-static {p0, p1, v2, p4, v3}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 409
    const/high16 v2, 0x41500000    # 13.0f

    sget v3, Lru/fokus/tetrad/Ui;->MUTED:I

    sget-object v4, Lru/fokus/tetrad/Ui;->BODY:Landroid/graphics/Typeface;

    invoke-static {p0, p2, v2, v3, v4}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 410
    iget-object v2, p0, Lru/fokus/tetrad/MarksActivity;->content:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 411
    if-nez p3, :cond_4

    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 412
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/fokus/tetrad/Grades$Subject;

    iget-object v2, p0, Lru/fokus/tetrad/MarksActivity;->content:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lru/fokus/tetrad/MarksActivity;->subjectCard(Lru/fokus/tetrad/Grades$Subject;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1
.end method

.method private subjectCard(Lru/fokus/tetrad/Grades$Subject;)Landroid/view/View;
    .locals 14

    .prologue
    .line 423
    iget-object v0, p0, Lru/fokus/tetrad/MarksActivity;->expanded:Ljava/util/Set;

    iget-object v1, p1, Lru/fokus/tetrad/Grades$Subject;->name:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    .line 424
    invoke-static {p0}, Lru/fokus/tetrad/Ui;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v5

    .line 425
    const/16 v0, 0xa

    invoke-static {v0}, Lru/fokus/tetrad/Ui;->gap(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 426
    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 427
    new-instance v0, Lru/fokus/tetrad/MarksActivity$10;

    invoke-direct {v0, p0, v4, p1}, Lru/fokus/tetrad/MarksActivity$10;-><init>(Lru/fokus/tetrad/MarksActivity;ZLru/fokus/tetrad/Grades$Subject;)V

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 432
    const/16 v0, 0xc

    invoke-static {p0, v0}, Lru/fokus/tetrad/Ui;->row(Landroid/content/Context;I)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 433
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lru/fokus/tetrad/Ui;->col(Landroid/content/Context;I)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 434
    iget-object v0, p1, Lru/fokus/tetrad/Grades$Subject;->name:Ljava/lang/String;

    const/high16 v3, 0x41880000    # 17.0f

    sget v6, Lru/fokus/tetrad/Ui;->FG:I

    sget-object v7, Lru/fokus/tetrad/Ui;->BOLD:Landroid/graphics/Typeface;

    invoke-static {p0, v0, v3, v6, v7}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 435
    iget v0, p1, Lru/fokus/tetrad/Grades$Subject;->count:I

    const/4 v3, 0x4

    if-ge v0, v3, :cond_0

    const-string v0, ""

    .line 436
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p1, Lru/fokus/tetrad/Grades$Subject;->reason:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "  "

    const-string v7, " \u00b7 "

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/high16 v3, 0x41500000    # 13.0f

    sget v6, Lru/fokus/tetrad/Ui;->MUTED:I

    sget-object v7, Lru/fokus/tetrad/Ui;->BODY:Landroid/graphics/Typeface;

    invoke-static {p0, v0, v3, v6, v7}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 437
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Lru/fokus/tetrad/Ui;->weight(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 438
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lru/fokus/tetrad/Ui;->col(Landroid/content/Context;I)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 439
    const v2, 0x800005

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 440
    iget-wide v2, p1, Lru/fokus/tetrad/Grades$Subject;->avg:D

    invoke-static {v2, v3}, Lru/fokus/tetrad/Grades;->fmt(D)Ljava/lang/String;

    move-result-object v2

    const/high16 v3, 0x41b00000    # 22.0f

    iget-wide v6, p1, Lru/fokus/tetrad/Grades$Subject;->avg:D

    invoke-direct {p0, v6, v7}, Lru/fokus/tetrad/MarksActivity;->colorFor(D)I

    move-result v6

    sget-object v7, Lru/fokus/tetrad/Ui;->DISPLAY:Landroid/graphics/Typeface;

    invoke-static {p0, v2, v3, v6, v7}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v2

    .line 441
    const-string v3, "tnum"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setFontFeatureSettings(Ljava/lang/String;)V

    .line 442
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 443
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p1, Lru/fokus/tetrad/Grades$Subject;->count:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lru/fokus/tetrad/Grades$Subject;->count:I

    int-to-long v6, v3

    const-string v3, "\u043e\u0446\u0435\u043d\u043a\u0430"

    const-string v8, "\u043e\u0446\u0435\u043d\u043a\u0438"

    const-string v9, "\u043e\u0446\u0435\u043d\u043e\u043a"

    invoke-static {v6, v7, v3, v8, v9}, Lru/fokus/tetrad/Ui;->plural(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/high16 v3, 0x41400000    # 12.0f

    sget v6, Lru/fokus/tetrad/Ui;->MUTED:I

    sget-object v7, Lru/fokus/tetrad/Ui;->BODY:Landroid/graphics/Typeface;

    invoke-static {p0, v2, v3, v6, v7}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 444
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 445
    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 448
    new-instance v3, Landroid/widget/HorizontalScrollView;

    invoke-direct {v3, p0}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 449
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Landroid/widget/HorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 450
    const/4 v0, 0x6

    invoke-static {p0, v0}, Lru/fokus/tetrad/Ui;->row(Landroid/content/Context;I)Landroid/widget/LinearLayout;

    move-result-object v6

    .line 451
    const/4 v0, 0x0

    iget v1, p1, Lru/fokus/tetrad/Grades$Subject;->count:I

    add-int/lit8 v1, v1, -0xc

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v1, v0

    :goto_1
    iget v0, p1, Lru/fokus/tetrad/Grades$Subject;->count:I

    if-ge v1, v0, :cond_4

    .line 452
    iget-object v0, p1, Lru/fokus/tetrad/Grades$Subject;->marks:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/fokus/tetrad/Mesh$Mark;

    .line 453
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v8, v0, Lru/fokus/tetrad/Mesh$Mark;->value:D

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-int v7, v8

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v2, v0, Lru/fokus/tetrad/Mesh$Mark;->weight:I

    const/4 v8, 0x1

    if-le v2, v8, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u00d7"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v8, v0, Lru/fokus/tetrad/Mesh$Mark;->weight:I

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/high16 v7, 0x41700000    # 15.0f

    iget-wide v8, v0, Lru/fokus/tetrad/Mesh$Mark;->value:D

    invoke-direct {p0, v8, v9}, Lru/fokus/tetrad/MarksActivity;->markColor(D)I

    move-result v8

    sget-object v9, Lru/fokus/tetrad/Ui;->BOLD:Landroid/graphics/Typeface;

    invoke-static {p0, v2, v7, v8, v9}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v2

    .line 454
    const/16 v7, 0x11

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 455
    const/high16 v7, 0x42000000    # 32.0f

    invoke-static {v7}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 456
    const/high16 v7, 0x40c00000    # 6.0f

    invoke-static {v7}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v7

    const/high16 v8, 0x40800000    # 4.0f

    invoke-static {v8}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v8

    const/high16 v9, 0x40c00000    # 6.0f

    invoke-static {v9}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v9

    const/high16 v10, 0x40800000    # 4.0f

    invoke-static {v10}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v10

    invoke-virtual {v2, v7, v8, v9, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 457
    iget-wide v8, v0, Lru/fokus/tetrad/Mesh$Mark;->value:D

    invoke-direct {p0, v8, v9}, Lru/fokus/tetrad/MarksActivity;->markBg(D)I

    move-result v0

    const/high16 v7, 0x41000000    # 8.0f

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v0, v7, v8, v9}, Lru/fokus/tetrad/Ui;->round(IFIF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 458
    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 451
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_1

    .line 435
    :cond_0
    invoke-virtual {p1}, Lru/fokus/tetrad/Grades$Subject;->trend()D

    move-result-wide v6

    const-wide v8, 0x3fd3333333333333L    # 0.3

    cmpl-double v0, v6, v8

    if-ltz v0, :cond_1

    const-string v0, "  \u2197 \u0440\u0430\u0441\u0442\u0443\u0442"

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p1}, Lru/fokus/tetrad/Grades$Subject;->trend()D

    move-result-wide v6

    const-wide v8, -0x402ccccccccccccdL    # -0.3

    cmpg-double v0, v6, v8

    if-gtz v0, :cond_2

    const-string v0, "  \u2198 \u0441\u043d\u0438\u0436\u0430\u044e\u0442\u0441\u044f"

    goto/16 :goto_0

    :cond_2
    const-string v0, "  \u2192 \u0440\u043e\u0432\u043d\u043e"

    goto/16 :goto_0

    .line 453
    :cond_3
    const-string v2, ""

    goto :goto_2

    .line 460
    :cond_4
    invoke-virtual {v3, v6}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;)V

    .line 461
    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 463
    if-eqz v4, :cond_b

    .line 464
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v0, "yyyy-MM-dd"

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v6, v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string v0, "d MMM"

    new-instance v1, Ljava/util/Locale;

    const-string v2, "ru"

    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 465
    const/4 v0, 0x6

    invoke-static {p0, v0}, Lru/fokus/tetrad/Ui;->col(Landroid/content/Context;I)Landroid/widget/LinearLayout;

    move-result-object v8

    .line 466
    iget v0, p1, Lru/fokus/tetrad/Grades$Subject;->count:I

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    :goto_3
    if-ltz v3, :cond_a

    .line 467
    iget-object v0, p1, Lru/fokus/tetrad/Grades$Subject;->marks:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/fokus/tetrad/Mesh$Mark;

    .line 468
    iget-object v1, v0, Lru/fokus/tetrad/Mesh$Mark;->date:Ljava/lang/String;

    .line 469
    :try_start_0
    iget-object v2, v0, Lru/fokus/tetrad/Mesh$Mark;->date:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v9, 0xa

    if-lt v2, v9, :cond_7

    iget-object v2, v0, Lru/fokus/tetrad/Mesh$Mark;->date:Ljava/lang/String;

    const/4 v9, 0x0

    const/16 v10, 0xa

    invoke-virtual {v2, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :goto_4
    invoke-virtual {v6, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 470
    :goto_5
    const/16 v2, 0xa

    invoke-static {p0, v2}, Lru/fokus/tetrad/Ui;->row(Landroid/content/Context;I)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 471
    iget-wide v10, v0, Lru/fokus/tetrad/Mesh$Mark;->value:D

    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    long-to-int v9, v10

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    const/high16 v10, 0x41700000    # 15.0f

    iget-wide v12, v0, Lru/fokus/tetrad/Mesh$Mark;->value:D

    invoke-direct {p0, v12, v13}, Lru/fokus/tetrad/MarksActivity;->markColor(D)I

    move-result v11

    sget-object v12, Lru/fokus/tetrad/Ui;->BOLD:Landroid/graphics/Typeface;

    invoke-static {p0, v9, v10, v11, v12}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v9

    .line 472
    const/16 v10, 0x11

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 473
    iget-wide v10, v0, Lru/fokus/tetrad/Mesh$Mark;->value:D

    invoke-direct {p0, v10, v11}, Lru/fokus/tetrad/MarksActivity;->markBg(D)I

    move-result v10

    const/high16 v11, 0x41000000    # 8.0f

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v10, v11, v12, v13}, Lru/fokus/tetrad/Ui;->round(IFIF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 474
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v11, 0x41f00000    # 30.0f

    invoke-static {v11}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v11

    const/high16 v12, 0x41f00000    # 30.0f

    invoke-static {v12}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v12

    invoke-direct {v10, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v9, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 475
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v1, v0, Lru/fokus/tetrad/Mesh$Mark;->form:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, v0, Lru/fokus/tetrad/Mesh$Mark;->form:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_5
    const-string v1, ""

    :goto_6
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v1, v0, Lru/fokus/tetrad/Mesh$Mark;->weight:I

    const/4 v10, 0x1

    if-le v1, v10, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " \u00b7 \u0432\u0435\u0441 "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v10, v0, Lru/fokus/tetrad/Mesh$Mark;->weight:I

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_7
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 476
    const/4 v9, 0x0

    invoke-static {p0, v9}, Lru/fokus/tetrad/Ui;->col(Landroid/content/Context;I)Landroid/widget/LinearLayout;

    move-result-object v9

    .line 477
    const/high16 v10, 0x41600000    # 14.0f

    sget v11, Lru/fokus/tetrad/Ui;->FG:I

    sget-object v12, Lru/fokus/tetrad/Ui;->BODY:Landroid/graphics/Typeface;

    invoke-static {p0, v1, v10, v11, v12}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 478
    iget-object v1, v0, Lru/fokus/tetrad/Mesh$Mark;->comment:Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v1, v0, Lru/fokus/tetrad/Mesh$Mark;->comment:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v0, v0, Lru/fokus/tetrad/Mesh$Mark;->comment:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x41500000    # 13.0f

    sget v10, Lru/fokus/tetrad/Ui;->MUTED:I

    sget-object v11, Lru/fokus/tetrad/Ui;->BODY:Landroid/graphics/Typeface;

    invoke-static {p0, v0, v1, v10, v11}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 479
    :cond_6
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Lru/fokus/tetrad/Ui;->weight(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v2, v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 480
    invoke-virtual {v8, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 466
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto/16 :goto_3

    .line 469
    :cond_7
    :try_start_1
    iget-object v2, v0, Lru/fokus/tetrad/Mesh$Mark;->date:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_4

    .line 475
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " \u00b7 "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v10, v0, Lru/fokus/tetrad/Mesh$Mark;->form:Ljava/lang/String;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_6

    :cond_9
    const-string v1, ""

    goto :goto_7

    .line 482
    :cond_a
    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 484
    :cond_b
    if-eqz v4, :cond_c

    const-string v0, "\u0421\u043a\u0440\u044b\u0442\u044c \u0432\u0441\u0435 \u043e\u0446\u0435\u043d\u043a\u0438"

    :goto_8
    const/high16 v1, 0x41500000    # 13.0f

    sget v2, Lru/fokus/tetrad/Ui;->INK:I

    sget-object v3, Lru/fokus/tetrad/Ui;->MEDIUM:Landroid/graphics/Typeface;

    invoke-static {p0, v0, v1, v2, v3}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 485
    return-object v5

    .line 484
    :cond_c
    const-string v0, "\u0412\u0441\u0435 \u043e\u0446\u0435\u043d\u043a\u0438 \u25be"

    goto :goto_8

    .line 469
    :catch_0
    move-exception v2

    goto/16 :goto_5
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 117
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 118
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    invoke-direct {p0}, Lru/fokus/tetrad/MarksActivity;->load()V

    .line 119
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    const/high16 v4, 0x41900000    # 18.0f

    .line 47
    invoke-static {p0, v2}, Lru/fokus/tetrad/Ui;->applyTheme(Landroid/app/Activity;Z)V

    .line 48
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    sget v0, Lru/fokus/tetrad/Ui;->BG:I

    sget-boolean v1, Lru/fokus/tetrad/Ui;->night:Z

    invoke-static {p0, v0, v1}, Lru/fokus/tetrad/Ui;->paintBars(Landroid/app/Activity;IZ)V

    .line 50
    new-instance v0, Lru/fokus/tetrad/Store;

    invoke-direct {v0, p0}, Lru/fokus/tetrad/Store;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lru/fokus/tetrad/MarksActivity;->store:Lru/fokus/tetrad/Store;

    .line 51
    iget-object v0, p0, Lru/fokus/tetrad/MarksActivity;->store:Lru/fokus/tetrad/Store;

    invoke-virtual {v0}, Lru/fokus/tetrad/Store;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "marksPeriod"

    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lru/fokus/tetrad/MarksActivity;->period:I

    .line 52
    iget-object v0, p0, Lru/fokus/tetrad/MarksActivity;->store:Lru/fokus/tetrad/Store;

    invoke-virtual {v0}, Lru/fokus/tetrad/Store;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "marksView"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lru/fokus/tetrad/MarksActivity;->view:I

    .line 53
    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 54
    sget v1, Lru/fokus/tetrad/Ui;->BG:I

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setBackgroundColor(I)V

    .line 55
    const/16 v1, 0xe

    invoke-static {p0, v1}, Lru/fokus/tetrad/Ui;->col(Landroid/content/Context;I)Landroid/widget/LinearLayout;

    move-result-object v1

    iput-object v1, p0, Lru/fokus/tetrad/MarksActivity;->content:Landroid/widget/LinearLayout;

    .line 56
    iget-object v1, p0, Lru/fokus/tetrad/MarksActivity;->content:Landroid/widget/LinearLayout;

    invoke-static {v4}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v2

    const/high16 v3, 0x41800000    # 16.0f

    invoke-static {v3}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v3

    invoke-static {v4}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v4

    const/high16 v5, 0x42000000    # 32.0f

    invoke-static {v5}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 57
    iget-object v1, p0, Lru/fokus/tetrad/MarksActivity;->content:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 58
    invoke-virtual {p0, v0}, Lru/fokus/tetrad/MarksActivity;->setContentView(Landroid/view/View;)V

    .line 59
    invoke-static {p0}, Lru/fokus/tetrad/Mesh;->loggedIn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lru/fokus/tetrad/MarksActivity;->load()V

    .line 60
    :goto_0
    return-void

    .line 59
    :cond_0
    iput-boolean v6, p0, Lru/fokus/tetrad/MarksActivity;->needLogin:Z

    invoke-direct {p0}, Lru/fokus/tetrad/MarksActivity;->render()V

    goto :goto_0
.end method
