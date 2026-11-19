.class public Lru/fokus/tetrad/QuizActivity;
.super Landroid/app/Activity;
.source "QuizActivity.java"


# static fields
.field private static final COUNT:I = 0x6

.field public static final EXTRA_SUBJECT:Ljava/lang/String; = "subject"

.field public static final EXTRA_TASK:Ljava/lang/String; = "task"

.field public static final EXTRA_TOPIC:Ljava/lang/String; = "topic"


# instance fields
.field private chosen:I

.field private content:Landroid/widget/LinearLayout;

.field private correct:I

.field private error:Ljava/lang/String;

.field private generation:I

.field private index:I

.field private loading:Z

.field private questions:Lorg/json/JSONArray;

.field private scroll:Landroid/widget/ScrollView;

.field private store:Lru/fokus/tetrad/Store;

.field private subject:Ljava/lang/String;

.field private task:Ljava/lang/String;

.field private topic:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 27
    iput v1, p0, Lru/fokus/tetrad/QuizActivity;->index:I

    iput v1, p0, Lru/fokus/tetrad/QuizActivity;->correct:I

    const/4 v0, -0x1

    iput v0, p0, Lru/fokus/tetrad/QuizActivity;->chosen:I

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lru/fokus/tetrad/QuizActivity;->error:Ljava/lang/String;

    .line 29
    iput-boolean v1, p0, Lru/fokus/tetrad/QuizActivity;->loading:Z

    .line 30
    iput v1, p0, Lru/fokus/tetrad/QuizActivity;->generation:I

    return-void
.end method

.method static synthetic access$000(Lru/fokus/tetrad/QuizActivity;)Lru/fokus/tetrad/Store;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lru/fokus/tetrad/QuizActivity;->store:Lru/fokus/tetrad/Store;

    return-object v0
.end method

.method static synthetic access$100(Lru/fokus/tetrad/QuizActivity;)I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lru/fokus/tetrad/QuizActivity;->generation:I

    return v0
.end method

.method static synthetic access$1008(Lru/fokus/tetrad/QuizActivity;)I
    .locals 2

    .prologue
    .line 18
    iget v0, p0, Lru/fokus/tetrad/QuizActivity;->index:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lru/fokus/tetrad/QuizActivity;->index:I

    return v0
.end method

.method static synthetic access$1100(Lru/fokus/tetrad/QuizActivity;)Landroid/widget/ScrollView;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lru/fokus/tetrad/QuizActivity;->scroll:Landroid/widget/ScrollView;

    return-object v0
.end method

.method static synthetic access$202(Lru/fokus/tetrad/QuizActivity;Z)Z
    .locals 0

    .prologue
    .line 18
    iput-boolean p1, p0, Lru/fokus/tetrad/QuizActivity;->loading:Z

    return p1
.end method

.method static synthetic access$302(Lru/fokus/tetrad/QuizActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lru/fokus/tetrad/QuizActivity;->error:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$402(Lru/fokus/tetrad/QuizActivity;Lorg/json/JSONArray;)Lorg/json/JSONArray;
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lru/fokus/tetrad/QuizActivity;->questions:Lorg/json/JSONArray;

    return-object p1
.end method

.method static synthetic access$502(Lru/fokus/tetrad/QuizActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lru/fokus/tetrad/QuizActivity;->topic:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lru/fokus/tetrad/QuizActivity;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lru/fokus/tetrad/QuizActivity;->render()V

    return-void
.end method

.method static synthetic access$700(Lru/fokus/tetrad/QuizActivity;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lru/fokus/tetrad/QuizActivity;->load()V

    return-void
.end method

.method static synthetic access$802(Lru/fokus/tetrad/QuizActivity;I)I
    .locals 0

    .prologue
    .line 18
    iput p1, p0, Lru/fokus/tetrad/QuizActivity;->chosen:I

    return p1
.end method

.method static synthetic access$908(Lru/fokus/tetrad/QuizActivity;)I
    .locals 2

    .prologue
    .line 18
    iget v0, p0, Lru/fokus/tetrad/QuizActivity;->correct:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lru/fokus/tetrad/QuizActivity;->correct:I

    return v0
.end method

.method public static intent(Landroid/app/Activity;Lorg/json/JSONObject;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 222
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lru/fokus/tetrad/QuizActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "subject"

    const-string v2, "subject"

    .line 223
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "task"

    const-string v2, "text"

    .line 224
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "topic"

    const-string v2, "topic"

    .line 225
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 222
    return-object v0
.end method

.method private load()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lru/fokus/tetrad/QuizActivity;->loading:Z

    .line 54
    iput-object v2, p0, Lru/fokus/tetrad/QuizActivity;->error:Ljava/lang/String;

    .line 55
    iput-object v2, p0, Lru/fokus/tetrad/QuizActivity;->questions:Lorg/json/JSONArray;

    .line 56
    iput v1, p0, Lru/fokus/tetrad/QuizActivity;->index:I

    iput v1, p0, Lru/fokus/tetrad/QuizActivity;->correct:I

    const/4 v0, -0x1

    iput v0, p0, Lru/fokus/tetrad/QuizActivity;->chosen:I

    .line 57
    invoke-direct {p0}, Lru/fokus/tetrad/QuizActivity;->render()V

    .line 58
    iget v0, p0, Lru/fokus/tetrad/QuizActivity;->generation:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lru/fokus/tetrad/QuizActivity;->generation:I

    .line 59
    iget-object v0, p0, Lru/fokus/tetrad/QuizActivity;->store:Lru/fokus/tetrad/Store;

    invoke-virtual {v0}, Lru/fokus/tetrad/Store;->grade()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u043d\u0435 \u0443\u043a\u0430\u0437\u0430\u043d"

    .line 60
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u0423\u0447\u0435\u043d\u0438\u043a "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " \u043a\u043b\u0430\u0441\u0441\u0430 \u0432\u044b\u043f\u043e\u043b\u043d\u0438\u043b \u0443\u0441\u0442\u043d\u043e\u0435 \u0434\u043e\u043c\u0430\u0448\u043d\u0435\u0435 \u0437\u0430\u0434\u0430\u043d\u0438\u0435"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 61
    iget-object v1, p0, Lru/fokus/tetrad/QuizActivity;->subject:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, ""

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ".\n\u0417\u0430\u0434\u0430\u043d\u0438\u0435: \u00ab"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lru/fokus/tetrad/QuizActivity;->task:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\u00bb.\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 63
    iget-object v1, p0, Lru/fokus/tetrad/QuizActivity;->topic:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, ""

    :goto_2
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\u0421\u043e\u0441\u0442\u0430\u0432\u044c \u0431\u043b\u0438\u0446-\u043e\u043f\u0440\u043e\u0441 \u0438\u0437 "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v3, 0x6

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " \u0432\u043e\u043f\u0440\u043e\u0441\u043e\u0432, \u0447\u0442\u043e\u0431\u044b \u043f\u0440\u043e\u0432\u0435\u0440\u0438\u0442\u044c, \u0447\u0442\u043e \u0443\u0447\u0435\u043d\u0438\u043a \u0434\u0435\u0439\u0441\u0442\u0432\u0438\u0442\u0435\u043b\u044c\u043d\u043e \u0432\u044b\u0443\u0447\u0438\u043b \u0438\u043b\u0438 \u043f\u0440\u043e\u0447\u0438\u0442\u0430\u043b \u0437\u0430\u0434\u0430\u043d\u043d\u043e\u0435. \u0412\u043e\u043f\u0440\u043e\u0441\u044b \u2014 \u0441\u0442\u0440\u043e\u0433\u043e \u043f\u043e \u0442\u0435\u043c\u0435 \u0437\u0430\u0434\u0430\u043d\u0438\u044f \u0438 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u043c\u0435 "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u043a\u043b\u0430\u0441\u0441\u0430: \u0444\u0430\u043a\u0442\u044b, \u043f\u043e\u043d\u044f\u0442\u0438\u044f, \u043f\u0440\u0430\u0432\u0438\u043b\u0430, \u0434\u0430\u0442\u044b, \u0433\u0435\u0440\u043e\u0438, \u0441\u043c\u044b\u0441\u043b \u0442\u0435\u043a\u0441\u0442\u0430. \u0415\u0441\u043b\u0438 \u0437\u0430\u0434\u0430\u043d\u0438\u0435 \u2014 \u0432\u044b\u0443\u0447\u0438\u0442\u044c \u0441\u0442\u0438\u0445\u043e\u0442\u0432\u043e\u0440\u0435\u043d\u0438\u0435, \u0441\u043f\u0440\u0430\u0448\u0438\u0432\u0430\u0439 \u043f\u0440\u043e \u0435\u0433\u043e \u0441\u043e\u0434\u0435\u0440\u0436\u0430\u043d\u0438\u0435, \u0430\u0432\u0442\u043e\u0440\u0430, \u043e\u0431\u0440\u0430\u0437\u044b \u0438 \u043f\u0440\u043e\u043f\u0443\u0449\u0435\u043d\u043d\u044b\u0435 \u0441\u043b\u043e\u0432\u0430 \u0438\u0437 \u0438\u0437\u0432\u0435\u0441\u0442\u043d\u044b\u0445 \u0441\u0442\u0440\u043e\u043a. \u0415\u0441\u043b\u0438 \u0442\u0435\u043c\u0430 \u043f\u043e \u0437\u0430\u0434\u0430\u043d\u0438\u044e \u043d\u0435\u044f\u0441\u043d\u0430 (\u043d\u0430\u043f\u0440\u0438\u043c\u0435\u0440, \u0443\u043a\u0430\u0437\u0430\u043d \u0442\u043e\u043b\u044c\u043a\u043e \u043d\u043e\u043c\u0435\u0440 \u043f\u0430\u0440\u0430\u0433\u0440\u0430\u0444\u0430 \u0431\u0435\u0437 \u043d\u0430\u0437\u0432\u0430\u043d\u0438\u044f), \u0441\u043e\u0441\u0442\u0430\u0432\u044c \u0432\u043e\u043f\u0440\u043e\u0441\u044b \u043f\u043e \u043d\u0430\u0438\u0431\u043e\u043b\u0435\u0435 \u0432\u0435\u0440\u043e\u044f\u0442\u043d\u043e\u0439 \u0442\u0435\u043c\u0435 \u0434\u043b\u044f \u044d\u0442\u043e\u0433\u043e \u043f\u0440\u0435\u0434\u043c\u0435\u0442\u0430 \u0438 \u043a\u043b\u0430\u0441\u0441\u0430 \u0438 \u043d\u0430\u043f\u0438\u0448\u0438 \u0435\u0451 \u0432 \u043f\u043e\u043b\u0435 \"topic\".\n\u0423 \u043a\u0430\u0436\u0434\u043e\u0433\u043e \u0432\u043e\u043f\u0440\u043e\u0441\u0430 \u0440\u043e\u0432\u043d\u043e 4 \u043a\u043e\u0440\u043e\u0442\u043a\u0438\u0445 \u0432\u0430\u0440\u0438\u0430\u043d\u0442\u0430 \u043e\u0442\u0432\u0435\u0442\u0430, \u043f\u0440\u0430\u0432\u0438\u043b\u044c\u043d\u044b\u0439 \u043e\u0434\u0438\u043d, \u043e\u0441\u0442\u0430\u043b\u044c\u043d\u044b\u0435 \u043f\u0440\u0430\u0432\u0434\u043e\u043f\u043e\u0434\u043e\u0431\u043d\u044b\u0435. \u041f\u043e\u0440\u044f\u0434\u043e\u043a \u043f\u0440\u0430\u0432\u0438\u043b\u044c\u043d\u044b\u0445 \u043e\u0442\u0432\u0435\u0442\u043e\u0432 \u043f\u0435\u0440\u0435\u043c\u0435\u0448\u0430\u0439.\n\u041e\u0442\u0432\u0435\u0442\u044c \u0442\u043e\u043b\u044c\u043a\u043e JSON: {\"topic\": \"\u0442\u0435\u043c\u0430\", \"questions\": [{\"q\": \"\u0432\u043e\u043f\u0440\u043e\u0441\", \"options\": [\"\u0430\", \"\u0431\", \"\u0432\", \"\u0433\"], \"answer\": 0, \"explain\": \"\u043a\u043e\u0440\u043e\u0442\u043a\u043e\u0435 \u043e\u0431\u044a\u044f\u0441\u043d\u0435\u043d\u0438\u0435, \u043f\u043e\u0447\u0435\u043c\u0443 \u0442\u0430\u043a\"}]}. \u0418\u043d\u0434\u0435\u043a\u0441 answer \u2014 \u043e\u0442 0 \u0434\u043e 3. \u0411\u0435\u0437 LaTeX \u0438 Markdown."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 72
    new-instance v1, Ljava/lang/Thread;

    new-instance v3, Lru/fokus/tetrad/QuizActivity$1;

    invoke-direct {v3, p0, v0, v2}, Lru/fokus/tetrad/QuizActivity$1;-><init>(Lru/fokus/tetrad/QuizActivity;Ljava/lang/String;I)V

    invoke-direct {v1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 100
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 101
    return-void

    .line 59
    :cond_0
    iget-object v0, p0, Lru/fokus/tetrad/QuizActivity;->store:Lru/fokus/tetrad/Store;

    invoke-virtual {v0}, Lru/fokus/tetrad/Store;->grade()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 61
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " \u043f\u043e \u043f\u0440\u0435\u0434\u043c\u0435\u0442\u0443 \u00ab"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lru/fokus/tetrad/QuizActivity;->subject:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\u00bb"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 63
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u0422\u0435\u043c\u0430: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lru/fokus/tetrad/QuizActivity;->topic:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ".\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2
.end method

.method private render()V
    .locals 15

    .prologue
    const/high16 v14, 0x41800000    # 16.0f

    const/high16 v13, 0x41400000    # 12.0f

    const/4 v1, 0x0

    const/high16 v12, 0x41700000    # 15.0f

    const/high16 v11, 0x41600000    # 14.0f

    .line 104
    iget-object v0, p0, Lru/fokus/tetrad/QuizActivity;->content:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 105
    iget-object v0, p0, Lru/fokus/tetrad/QuizActivity;->content:Landroid/widget/LinearLayout;

    const-string v2, "\u0411\u043b\u0438\u0446-\u043e\u043f\u0440\u043e\u0441"

    invoke-static {p0, v2}, Lru/fokus/tetrad/Ui;->header(Landroid/app/Activity;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 106
    const/4 v0, 0x4

    invoke-static {p0, v0}, Lru/fokus/tetrad/Ui;->col(Landroid/content/Context;I)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 107
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lru/fokus/tetrad/QuizActivity;->subject:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "\u0423\u0441\u0442\u043d\u043e\u0435 \u0437\u0430\u0434\u0430\u043d\u0438\u0435"

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lru/fokus/tetrad/QuizActivity;->topic:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, ""

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v3, Lru/fokus/tetrad/Ui;->MUTED:I

    sget-object v4, Lru/fokus/tetrad/Ui;->MEDIUM:Landroid/graphics/Typeface;

    invoke-static {p0, v0, v12, v3, v4}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 108
    iget-object v0, p0, Lru/fokus/tetrad/QuizActivity;->task:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u0417\u0430\u0434\u0430\u043d\u0438\u0435: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lru/fokus/tetrad/QuizActivity;->task:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v3, Lru/fokus/tetrad/Ui;->MUTED:I

    sget-object v4, Lru/fokus/tetrad/Ui;->BODY:Landroid/graphics/Typeface;

    invoke-static {p0, v0, v11, v3, v4}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 109
    :cond_0
    iget-object v0, p0, Lru/fokus/tetrad/QuizActivity;->content:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 111
    iget-object v0, p0, Lru/fokus/tetrad/QuizActivity;->store:Lru/fokus/tetrad/Store;

    invoke-virtual {v0}, Lru/fokus/tetrad/Store;->aiReady()Z

    move-result v0

    if-nez v0, :cond_4

    .line 112
    invoke-static {p0}, Lru/fokus/tetrad/Ui;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 113
    const-string v1, "\u0414\u043b\u044f \u043e\u043f\u0440\u043e\u0441\u0430 \u043d\u0443\u0436\u0435\u043d \u043f\u043e\u0434\u043a\u043b\u044e\u0447\u0451\u043d\u043d\u044b\u0439 \u0418\u0418 (\u2699 \u2192 \u0418\u0418-\u043f\u0440\u043e\u0432\u0435\u0440\u043a\u0430)."

    sget v2, Lru/fokus/tetrad/Ui;->FG:I

    sget-object v3, Lru/fokus/tetrad/Ui;->BODY:Landroid/graphics/Typeface;

    invoke-static {p0, v1, v12, v2, v3}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 114
    iget-object v1, p0, Lru/fokus/tetrad/QuizActivity;->content:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 187
    :cond_1
    :goto_2
    return-void

    .line 107
    :cond_2
    iget-object v0, p0, Lru/fokus/tetrad/QuizActivity;->subject:Ljava/lang/String;

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " \u00b7 "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lru/fokus/tetrad/QuizActivity;->topic:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 117
    :cond_4
    iget-boolean v0, p0, Lru/fokus/tetrad/QuizActivity;->loading:Z

    if-eqz v0, :cond_5

    .line 118
    invoke-static {p0}, Lru/fokus/tetrad/Ui;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 119
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 120
    new-instance v1, Landroid/widget/ProgressBar;

    invoke-direct {v1, p0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x42200000    # 40.0f

    invoke-static {v3}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v3

    const/high16 v4, 0x42200000    # 40.0f

    invoke-static {v4}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    const-string v1, "\u0423\u0447\u0438\u0442\u0435\u043b\u044c \u0433\u043e\u0442\u043e\u0432\u0438\u0442 \u0432\u043e\u043f\u0440\u043e\u0441\u044b \u043f\u043e \u0442\u0435\u043c\u0435\u2026"

    sget v2, Lru/fokus/tetrad/Ui;->MUTED:I

    sget-object v3, Lru/fokus/tetrad/Ui;->BODY:Landroid/graphics/Typeface;

    invoke-static {p0, v1, v12, v2, v3}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v1

    .line 122
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 123
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 124
    iget-object v1, p0, Lru/fokus/tetrad/QuizActivity;->content:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 127
    :cond_5
    iget-object v0, p0, Lru/fokus/tetrad/QuizActivity;->error:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 128
    invoke-static {p0}, Lru/fokus/tetrad/Ui;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 129
    iget-object v2, p0, Lru/fokus/tetrad/QuizActivity;->error:Ljava/lang/String;

    sget v3, Lru/fokus/tetrad/Ui;->RED:I

    sget-object v4, Lru/fokus/tetrad/Ui;->MEDIUM:Landroid/graphics/Typeface;

    invoke-static {p0, v2, v12, v3, v4}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 130
    const-string v2, "\u041f\u043e\u043f\u0440\u043e\u0431\u043e\u0432\u0430\u0442\u044c \u0435\u0449\u0451 \u0440\u0430\u0437"

    invoke-static {p0, v2, v1, v1}, Lru/fokus/tetrad/Ui;->button(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v1

    .line 131
    new-instance v2, Lru/fokus/tetrad/QuizActivity$2;

    invoke-direct {v2, p0}, Lru/fokus/tetrad/QuizActivity$2;-><init>(Lru/fokus/tetrad/QuizActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    invoke-static {}, Lru/fokus/tetrad/Ui;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 133
    iget-object v1, p0, Lru/fokus/tetrad/QuizActivity;->content:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_2

    .line 136
    :cond_6
    iget-object v0, p0, Lru/fokus/tetrad/QuizActivity;->questions:Lorg/json/JSONArray;

    if-eqz v0, :cond_1

    .line 137
    iget v0, p0, Lru/fokus/tetrad/QuizActivity;->index:I

    iget-object v2, p0, Lru/fokus/tetrad/QuizActivity;->questions:Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lt v0, v2, :cond_7

    invoke-direct {p0}, Lru/fokus/tetrad/QuizActivity;->renderResult()V

    goto/16 :goto_2

    .line 139
    :cond_7
    iget-object v0, p0, Lru/fokus/tetrad/QuizActivity;->questions:Lorg/json/JSONArray;

    iget v2, p0, Lru/fokus/tetrad/QuizActivity;->index:I

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 140
    const-string v0, "answer"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    .line 141
    const-string v0, "options"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 143
    new-instance v0, Lru/fokus/tetrad/Ui$Progress;

    sget v2, Lru/fokus/tetrad/Ui;->LINE:I

    sget v3, Lru/fokus/tetrad/Ui;->INK:I

    invoke-direct {v0, p0, v2, v3}, Lru/fokus/tetrad/Ui$Progress;-><init>(Landroid/content/Context;II)V

    .line 144
    iget v2, p0, Lru/fokus/tetrad/QuizActivity;->index:I

    int-to-float v2, v2

    iget-object v3, p0, Lru/fokus/tetrad/QuizActivity;->questions:Lorg/json/JSONArray;

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v0, v2}, Lru/fokus/tetrad/Ui$Progress;->set(F)V

    .line 145
    iget-object v2, p0, Lru/fokus/tetrad/QuizActivity;->content:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/high16 v8, 0x40c00000    # 6.0f

    invoke-static {v8}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v8

    invoke-direct {v3, v4, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 147
    invoke-static {p0}, Lru/fokus/tetrad/Ui;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v8

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u0412\u043e\u043f\u0440\u043e\u0441 "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lru/fokus/tetrad/QuizActivity;->index:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " \u0438\u0437 "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lru/fokus/tetrad/QuizActivity;->questions:Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/high16 v2, 0x41500000    # 13.0f

    sget v3, Lru/fokus/tetrad/Ui;->MUTED:I

    sget-object v4, Lru/fokus/tetrad/Ui;->MEDIUM:Landroid/graphics/Typeface;

    invoke-static {p0, v0, v2, v3, v4}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 149
    const-string v0, "q"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/high16 v2, 0x41980000    # 19.0f

    sget v3, Lru/fokus/tetrad/Ui;->FG:I

    sget-object v4, Lru/fokus/tetrad/Ui;->BOLD:Landroid/graphics/Typeface;

    invoke-static {p0, v0, v2, v3, v4}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move v0, v1

    .line 150
    :goto_3
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_b

    .line 152
    invoke-virtual {v7, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lru/fokus/tetrad/Ui;->FG:I

    sget-object v4, Lru/fokus/tetrad/Ui;->MEDIUM:Landroid/graphics/Typeface;

    invoke-static {p0, v2, v14, v3, v4}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v9

    .line 153
    invoke-static {v14}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v2

    invoke-static {v11}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v3

    invoke-static {v14}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v4

    invoke-static {v11}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v10

    invoke-virtual {v9, v2, v3, v4, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 154
    sget v4, Lru/fokus/tetrad/Ui;->BG:I

    sget v3, Lru/fokus/tetrad/Ui;->LINE:I

    sget v2, Lru/fokus/tetrad/Ui;->FG:I

    .line 155
    iget v10, p0, Lru/fokus/tetrad/QuizActivity;->chosen:I

    if-ltz v10, :cond_8

    .line 156
    if-ne v0, v6, :cond_a

    sget v4, Lru/fokus/tetrad/Ui;->OK_SOFT:I

    sget v3, Lru/fokus/tetrad/Ui;->OK:I

    sget v2, Lru/fokus/tetrad/Ui;->OK:I

    .line 159
    :cond_8
    :goto_4
    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 160
    const/high16 v2, 0x3fc00000    # 1.5f

    invoke-static {v4, v11, v3, v2}, Lru/fokus/tetrad/Ui;->round(IFIF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    const v3, 0x22808080

    invoke-static {v2, v3, v11}, Lru/fokus/tetrad/Ui;->ripple(Landroid/graphics/drawable/Drawable;IF)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 161
    iget v2, p0, Lru/fokus/tetrad/QuizActivity;->chosen:I

    if-gez v2, :cond_9

    new-instance v2, Lru/fokus/tetrad/QuizActivity$3;

    invoke-direct {v2, p0, v0, v6}, Lru/fokus/tetrad/QuizActivity$3;-><init>(Lru/fokus/tetrad/QuizActivity;II)V

    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    :cond_9
    invoke-static {}, Lru/fokus/tetrad/Ui;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v8, v9, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 150
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 157
    :cond_a
    iget v10, p0, Lru/fokus/tetrad/QuizActivity;->chosen:I

    if-ne v0, v10, :cond_8

    sget v4, Lru/fokus/tetrad/Ui;->RED_SOFT:I

    sget v3, Lru/fokus/tetrad/Ui;->RED:I

    sget v2, Lru/fokus/tetrad/Ui;->RED:I

    goto :goto_4

    .line 168
    :cond_b
    iget v0, p0, Lru/fokus/tetrad/QuizActivity;->chosen:I

    if-ltz v0, :cond_d

    .line 169
    iget v0, p0, Lru/fokus/tetrad/QuizActivity;->chosen:I

    if-ne v0, v6, :cond_e

    const/4 v0, 0x1

    .line 170
    :goto_5
    const/4 v2, 0x4

    invoke-static {p0, v2}, Lru/fokus/tetrad/Ui;->col(Landroid/content/Context;I)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 171
    invoke-static {v11}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v2

    invoke-static {v13}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v4

    invoke-static {v11}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v9

    invoke-static {v13}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v10

    invoke-virtual {v3, v2, v4, v9, v10}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 172
    if-eqz v0, :cond_f

    sget v2, Lru/fokus/tetrad/Ui;->OK_SOFT:I

    :goto_6
    const/4 v4, 0x0

    invoke-static {v2, v13, v1, v4}, Lru/fokus/tetrad/Ui;->round(IFIF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 173
    if-eqz v0, :cond_10

    const-string v2, "\u0412\u0435\u0440\u043d\u043e!"

    :goto_7
    if-eqz v0, :cond_11

    sget v0, Lru/fokus/tetrad/Ui;->OK:I

    :goto_8
    sget-object v4, Lru/fokus/tetrad/Ui;->BOLD:Landroid/graphics/Typeface;

    invoke-static {p0, v2, v12, v0, v4}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 174
    const-string v0, "explain"

    const-string v2, ""

    invoke-virtual {v5, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 175
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_c

    sget v2, Lru/fokus/tetrad/Ui;->FG:I

    sget-object v4, Lru/fokus/tetrad/Ui;->BODY:Landroid/graphics/Typeface;

    invoke-static {p0, v0, v12, v2, v4}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 176
    :cond_c
    invoke-virtual {v8, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 177
    iget v0, p0, Lru/fokus/tetrad/QuizActivity;->index:I

    add-int/lit8 v0, v0, 0x1

    iget-object v2, p0, Lru/fokus/tetrad/QuizActivity;->questions:Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_12

    const-string v0, "\u0414\u0430\u043b\u044c\u0448\u0435"

    :goto_9
    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Lru/fokus/tetrad/Ui;->button(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v0

    .line 178
    new-instance v1, Lru/fokus/tetrad/QuizActivity$4;

    invoke-direct {v1, p0}, Lru/fokus/tetrad/QuizActivity$4;-><init>(Lru/fokus/tetrad/QuizActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    invoke-static {}, Lru/fokus/tetrad/Ui;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 186
    :cond_d
    iget-object v0, p0, Lru/fokus/tetrad/QuizActivity;->content:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_2

    :cond_e
    move v0, v1

    .line 169
    goto :goto_5

    .line 172
    :cond_f
    sget v2, Lru/fokus/tetrad/Ui;->WARN_SOFT:I

    goto :goto_6

    .line 173
    :cond_10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u041d\u0435 \u0441\u043e\u0432\u0441\u0435\u043c. \u041f\u0440\u0430\u0432\u0438\u043b\u044c\u043d\u043e: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7, v6}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_7

    :cond_11
    sget v0, Lru/fokus/tetrad/Ui;->WARN:I

    goto :goto_8

    .line 177
    :cond_12
    const-string v0, "\u0420\u0435\u0437\u0443\u043b\u044c\u0442\u0430\u0442"

    goto :goto_9
.end method

.method private renderResult()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/high16 v11, 0x42a80000    # 84.0f

    const/16 v10, 0x11

    const/4 v2, 0x4

    const/4 v9, 0x1

    .line 190
    iget-object v0, p0, Lru/fokus/tetrad/QuizActivity;->questions:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 191
    iget v0, p0, Lru/fokus/tetrad/QuizActivity;->correct:I

    int-to-float v0, v0

    int-to-float v1, v3

    div-float v4, v0, v1

    .line 192
    const v0, 0x3f59999a    # 0.85f

    cmpl-float v0, v4, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x5

    move v1, v0

    .line 193
    :goto_0
    if-lt v1, v2, :cond_3

    sget v0, Lru/fokus/tetrad/Ui;->OK:I

    .line 194
    :goto_1
    invoke-static {p0}, Lru/fokus/tetrad/Ui;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v5

    .line 195
    invoke-virtual {v5, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 196
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const/high16 v7, 0x42580000    # 54.0f

    sget-object v8, Lru/fokus/tetrad/Ui;->HAND:Landroid/graphics/Typeface;

    invoke-static {p0, v6, v7, v0, v8}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v6

    .line 197
    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 198
    new-instance v7, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v7}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 199
    invoke-virtual {v7, v9}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 200
    const/high16 v8, 0x40200000    # 2.5f

    invoke-static {v8}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v8

    invoke-virtual {v7, v8, v0}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 201
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 202
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {v11}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v7

    invoke-static {v11}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v8

    invoke-direct {v0, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u041f\u0440\u0430\u0432\u0438\u043b\u044c\u043d\u043e "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v6, p0, Lru/fokus/tetrad/QuizActivity;->correct:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " \u0438\u0437 "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/high16 v3, 0x41a00000    # 20.0f

    sget v6, Lru/fokus/tetrad/Ui;->FG:I

    sget-object v7, Lru/fokus/tetrad/Ui;->BOLD:Landroid/graphics/Typeface;

    invoke-static {p0, v0, v3, v6, v7}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v0

    .line 204
    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 205
    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 206
    const/4 v0, 0x5

    if-ne v1, v0, :cond_5

    const-string v0, "\u041e\u0442\u043b\u0438\u0447\u043d\u043e, \u0442\u0435\u043c\u0430 \u0432\u044b\u0443\u0447\u0435\u043d\u0430!"

    .line 207
    :goto_2
    const/high16 v2, 0x41700000    # 15.0f

    sget v3, Lru/fokus/tetrad/Ui;->MUTED:I

    sget-object v6, Lru/fokus/tetrad/Ui;->BODY:Landroid/graphics/Typeface;

    .line 206
    invoke-static {p0, v0, v2, v3, v6}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v0

    .line 208
    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 209
    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 210
    iget-object v0, p0, Lru/fokus/tetrad/QuizActivity;->content:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 211
    iget-object v0, p0, Lru/fokus/tetrad/QuizActivity;->store:Lru/fokus/tetrad/Store;

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget-object v3, p0, Lru/fokus/tetrad/QuizActivity;->subject:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lru/fokus/tetrad/Store;->setMarkForLast(IILjava/lang/String;)V

    .line 213
    const-string v0, "\u041f\u0440\u043e\u0439\u0442\u0438 \u0435\u0449\u0451 \u0440\u0430\u0437 (\u043d\u043e\u0432\u044b\u0435 \u0432\u043e\u043f\u0440\u043e\u0441\u044b)"

    invoke-static {p0, v0, v9, v12}, Lru/fokus/tetrad/Ui;->button(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v0

    .line 214
    new-instance v1, Lru/fokus/tetrad/QuizActivity$5;

    invoke-direct {v1, p0}, Lru/fokus/tetrad/QuizActivity$5;-><init>(Lru/fokus/tetrad/QuizActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    iget-object v1, p0, Lru/fokus/tetrad/QuizActivity;->content:Landroid/widget/LinearLayout;

    invoke-static {}, Lru/fokus/tetrad/Ui;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 216
    const-string v0, "\u0413\u043e\u0442\u043e\u0432\u043e"

    invoke-static {p0, v0, v12, v9}, Lru/fokus/tetrad/Ui;->button(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v0

    .line 217
    new-instance v1, Lru/fokus/tetrad/QuizActivity$6;

    invoke-direct {v1, p0}, Lru/fokus/tetrad/QuizActivity$6;-><init>(Lru/fokus/tetrad/QuizActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    iget-object v1, p0, Lru/fokus/tetrad/QuizActivity;->content:Landroid/widget/LinearLayout;

    invoke-static {}, Lru/fokus/tetrad/Ui;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 219
    return-void

    .line 192
    :cond_0
    const v0, 0x3f266666    # 0.65f

    cmpl-float v0, v4, v0

    if-ltz v0, :cond_1

    move v1, v2

    goto/16 :goto_0

    :cond_1
    const v0, 0x3ee66666    # 0.45f

    cmpl-float v0, v4, v0

    if-ltz v0, :cond_2

    const/4 v0, 0x3

    move v1, v0

    goto/16 :goto_0

    :cond_2
    const/4 v0, 0x2

    move v1, v0

    goto/16 :goto_0

    .line 193
    :cond_3
    const/4 v0, 0x3

    if-ne v1, v0, :cond_4

    sget v0, Lru/fokus/tetrad/Ui;->WARN:I

    goto/16 :goto_1

    :cond_4
    sget v0, Lru/fokus/tetrad/Ui;->RED:I

    goto/16 :goto_1

    .line 206
    :cond_5
    if-ne v1, v2, :cond_6

    const-string v0, "\u0425\u043e\u0440\u043e\u0448\u043e! \u041f\u043e\u0432\u0442\u043e\u0440\u0438 \u0432\u043e\u043f\u0440\u043e\u0441\u044b, \u0433\u0434\u0435 \u043e\u0448\u0438\u0431\u0441\u044f."

    goto :goto_2

    .line 207
    :cond_6
    const-string v0, "\u0421\u0442\u043e\u0438\u0442 \u0435\u0449\u0451 \u0440\u0430\u0437 \u043f\u0440\u043e\u0447\u0438\u0442\u0430\u0442\u044c \u0438 \u043f\u0440\u043e\u0439\u0442\u0438 \u043e\u043f\u0440\u043e\u0441 \u0437\u0430\u043d\u043e\u0432\u043e."

    goto :goto_2
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/high16 v3, 0x41900000    # 18.0f

    .line 33
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lru/fokus/tetrad/Ui;->applyTheme(Landroid/app/Activity;Z)V

    .line 34
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    sget v0, Lru/fokus/tetrad/Ui;->BG:I

    sget-boolean v1, Lru/fokus/tetrad/Ui;->night:Z

    invoke-static {p0, v0, v1}, Lru/fokus/tetrad/Ui;->paintBars(Landroid/app/Activity;IZ)V

    .line 36
    new-instance v0, Lru/fokus/tetrad/Store;

    invoke-direct {v0, p0}, Lru/fokus/tetrad/Store;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lru/fokus/tetrad/QuizActivity;->store:Lru/fokus/tetrad/Store;

    .line 37
    invoke-virtual {p0}, Lru/fokus/tetrad/QuizActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "subject"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/fokus/tetrad/QuizActivity;->subject:Ljava/lang/String;

    .line 38
    invoke-virtual {p0}, Lru/fokus/tetrad/QuizActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "task"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/fokus/tetrad/QuizActivity;->task:Ljava/lang/String;

    .line 39
    invoke-virtual {p0}, Lru/fokus/tetrad/QuizActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "topic"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/fokus/tetrad/QuizActivity;->topic:Ljava/lang/String;

    .line 40
    iget-object v0, p0, Lru/fokus/tetrad/QuizActivity;->subject:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    iput-object v0, p0, Lru/fokus/tetrad/QuizActivity;->subject:Ljava/lang/String;

    .line 41
    :cond_0
    iget-object v0, p0, Lru/fokus/tetrad/QuizActivity;->task:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, ""

    iput-object v0, p0, Lru/fokus/tetrad/QuizActivity;->task:Ljava/lang/String;

    .line 42
    :cond_1
    iget-object v0, p0, Lru/fokus/tetrad/QuizActivity;->topic:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, ""

    iput-object v0, p0, Lru/fokus/tetrad/QuizActivity;->topic:Ljava/lang/String;

    .line 43
    :cond_2
    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lru/fokus/tetrad/QuizActivity;->scroll:Landroid/widget/ScrollView;

    .line 44
    iget-object v0, p0, Lru/fokus/tetrad/QuizActivity;->scroll:Landroid/widget/ScrollView;

    sget v1, Lru/fokus/tetrad/Ui;->BG:I

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setBackgroundColor(I)V

    .line 45
    const/16 v0, 0x10

    invoke-static {p0, v0}, Lru/fokus/tetrad/Ui;->col(Landroid/content/Context;I)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lru/fokus/tetrad/QuizActivity;->content:Landroid/widget/LinearLayout;

    .line 46
    iget-object v0, p0, Lru/fokus/tetrad/QuizActivity;->content:Landroid/widget/LinearLayout;

    invoke-static {v3}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v1

    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {v2}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v2

    invoke-static {v3}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v3

    const/high16 v4, 0x42000000    # 32.0f

    invoke-static {v4}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 47
    iget-object v0, p0, Lru/fokus/tetrad/QuizActivity;->scroll:Landroid/widget/ScrollView;

    iget-object v1, p0, Lru/fokus/tetrad/QuizActivity;->content:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 48
    iget-object v0, p0, Lru/fokus/tetrad/QuizActivity;->scroll:Landroid/widget/ScrollView;

    invoke-virtual {p0, v0}, Lru/fokus/tetrad/QuizActivity;->setContentView(Landroid/view/View;)V

    .line 49
    invoke-direct {p0}, Lru/fokus/tetrad/QuizActivity;->load()V

    .line 50
    return-void
.end method
