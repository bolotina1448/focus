.class public final Lru/fokus/tetrad/CheckState;
.super Ljava/lang/Object;
.source "CheckState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/fokus/tetrad/CheckState$Listener;
    }
.end annotation


# static fields
.field private static inst:Lru/fokus/tetrad/CheckState;


# instance fields
.field public final chat:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public chatBusy:Z

.field public checking:Z

.field public final condition:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private generation:I

.field public grade:Ljava/lang/String;

.field public lessonItems:Lorg/json/JSONArray;

.field public listener:Lru/fokus/tetrad/CheckState$Listener;

.field private final main:Landroid/os/Handler;

.field public prefilled:Z

.field public report:Lorg/json/JSONObject;

.field public reportGrade:Ljava/lang/String;

.field public reportSubject:Ljava/lang/String;

.field public reportTask:Ljava/lang/String;

.field public reportTextbook:Ljava/lang/String;

.field public final solution:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field public status:Ljava/lang/String;

.field public statusError:Z

.field public subject:Ljava/lang/String;

.field public task:Ljava/lang/String;

.field public textbook:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lru/fokus/tetrad/CheckState;->subject:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lru/fokus/tetrad/CheckState;->grade:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lru/fokus/tetrad/CheckState;->task:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lru/fokus/tetrad/CheckState;->textbook:Ljava/lang/String;

    .line 21
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lru/fokus/tetrad/CheckState;->lessonItems:Lorg/json/JSONArray;

    .line 22
    iput-boolean v2, p0, Lru/fokus/tetrad/CheckState;->prefilled:Z

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lru/fokus/tetrad/CheckState;->solution:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lru/fokus/tetrad/CheckState;->condition:Ljava/util/List;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lru/fokus/tetrad/CheckState;->reportSubject:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lru/fokus/tetrad/CheckState;->reportGrade:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lru/fokus/tetrad/CheckState;->reportTask:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lru/fokus/tetrad/CheckState;->reportTextbook:Ljava/lang/String;

    .line 26
    iput-boolean v2, p0, Lru/fokus/tetrad/CheckState;->checking:Z

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lru/fokus/tetrad/CheckState;->status:Ljava/lang/String;

    .line 28
    iput-boolean v2, p0, Lru/fokus/tetrad/CheckState;->statusError:Z

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lru/fokus/tetrad/CheckState;->chat:Ljava/util/List;

    .line 30
    iput-boolean v2, p0, Lru/fokus/tetrad/CheckState;->chatBusy:Z

    .line 32
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lru/fokus/tetrad/CheckState;->main:Landroid/os/Handler;

    .line 33
    iput v2, p0, Lru/fokus/tetrad/CheckState;->generation:I

    return-void
.end method

.method static synthetic access$000(Lru/fokus/tetrad/CheckState;)I
    .locals 1

    .prologue
    .line 14
    iget v0, p0, Lru/fokus/tetrad/CheckState;->generation:I

    return v0
.end method

.method static synthetic access$100(Lru/fokus/tetrad/CheckState;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lru/fokus/tetrad/CheckState;->notifyUi()V

    return-void
.end method

.method static clean(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 157
    const-string v0, "\\*\\*(.+?)\\*\\*"

    const-string v1, "$1"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "(?m)^#{1,6}\\s+"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "$$"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "$"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static get()Lru/fokus/tetrad/CheckState;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lru/fokus/tetrad/CheckState;->inst:Lru/fokus/tetrad/CheckState;

    if-nez v0, :cond_0

    new-instance v0, Lru/fokus/tetrad/CheckState;

    invoke-direct {v0}, Lru/fokus/tetrad/CheckState;-><init>()V

    sput-object v0, Lru/fokus/tetrad/CheckState;->inst:Lru/fokus/tetrad/CheckState;

    :cond_0
    sget-object v0, Lru/fokus/tetrad/CheckState;->inst:Lru/fokus/tetrad/CheckState;

    return-object v0
.end method

.method private notifyUi()V
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Lru/fokus/tetrad/CheckState;->main:Landroid/os/Handler;

    new-instance v1, Lru/fokus/tetrad/CheckState$1;

    invoke-direct {v1, p0}, Lru/fokus/tetrad/CheckState$1;-><init>(Lru/fokus/tetrad/CheckState;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 41
    return-void
.end method

.method private static trim(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public apiTurns()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 145
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    .line 146
    :goto_0
    iget-object v0, p0, Lru/fokus/tetrad/CheckState;->chat:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 147
    iget-object v0, p0, Lru/fokus/tetrad/CheckState;->chat:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 148
    const-string v4, "error"

    aget-object v5, v0, v2

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 146
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 149
    :cond_1
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 151
    :cond_2
    return-object v3
.end method

.method public ask(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v4, 0x1

    .line 99
    iget-boolean v0, p0, Lru/fokus/tetrad/CheckState;->chatBusy:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lru/fokus/tetrad/CheckState;->report:Lorg/json/JSONObject;

    if-nez v0, :cond_1

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    iput-boolean v4, p0, Lru/fokus/tetrad/CheckState;->chatBusy:Z

    .line 101
    iget-object v0, p0, Lru/fokus/tetrad/CheckState;->chat:Ljava/util/List;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "user"

    aput-object v3, v1, v2

    aput-object p2, v1, v4

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    invoke-direct {p0}, Lru/fokus/tetrad/CheckState;->notifyUi()V

    .line 103
    iget v5, p0, Lru/fokus/tetrad/CheckState;->generation:I

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u0422\u044b \u2014 \u0434\u043e\u0431\u0440\u043e\u0436\u0435\u043b\u0430\u0442\u0435\u043b\u044c\u043d\u044b\u0439 \u0448\u043a\u043e\u043b\u044c\u043d\u044b\u0439 \u0443\u0447\u0438\u0442\u0435\u043b\u044c. \u0422\u044b \u0442\u043e\u043b\u044c\u043a\u043e \u0447\u0442\u043e \u043f\u0440\u043e\u0432\u0435\u0440\u0438\u043b \u0434\u043e\u043c\u0430\u0448\u043d\u044e\u044e \u0440\u0430\u0431\u043e\u0442\u0443 \u0443\u0447\u0435\u043d\u0438\u043a\u0430 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lru/fokus/tetrad/CheckState;->reportGrade:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u043a\u043b\u0430\u0441\u0441\u0430 \u043f\u043e \u043f\u0440\u0435\u0434\u043c\u0435\u0442\u0443 \u00ab"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lru/fokus/tetrad/CheckState;->reportSubject:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u00bb"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 105
    iget-object v0, p0, Lru/fokus/tetrad/CheckState;->reportTextbook:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, ""

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". \u0427\u0442\u043e \u0443\u0447\u0435\u043d\u0438\u043a \u043d\u0430\u043f\u0438\u0441\u0430\u043b \u043f\u0440\u043e \u0437\u0430\u0434\u0430\u043d\u0438\u0435: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lru/fokus/tetrad/CheckState;->reportTask:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "\u043d\u0438\u0447\u0435\u0433\u043e"

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".\n\u0420\u0435\u0437\u0443\u043b\u044c\u0442\u0430\u0442 \u0442\u0432\u043e\u0435\u0439 \u043f\u0440\u043e\u0432\u0435\u0440\u043a\u0438 (JSON): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lru/fokus/tetrad/CheckState;->report:Lorg/json/JSONObject;

    .line 106
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2ee0

    invoke-static {v1, v2}, Lru/fokus/tetrad/CheckState;->trim(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\u0424\u043e\u0442\u043e \u0440\u0435\u0448\u0435\u043d\u0438\u044f \u0442\u044b \u0432\u0438\u0434\u0435\u043b \u0440\u0430\u043d\u044c\u0448\u0435; \u0441\u0435\u0439\u0447\u0430\u0441 \u0443 \u0442\u0435\u0431\u044f \u0442\u043e\u043b\u044c\u043a\u043e \u044d\u0442\u043e\u0442 \u0440\u0435\u0437\u0443\u043b\u044c\u0442\u0430\u0442. \u041e\u0442\u0432\u0435\u0447\u0430\u0439 \u043d\u0430 \u0432\u043e\u043f\u0440\u043e\u0441\u044b \u0443\u0447\u0435\u043d\u0438\u043a\u0430 \u043f\u043e-\u0440\u0443\u0441\u0441\u043a\u0438: \u043a\u043e\u0440\u043e\u0442\u043a\u043e, \u043f\u043e \u0448\u0430\u0433\u0430\u043c, \u043f\u0440\u043e\u0441\u0442\u044b\u043c\u0438 \u0441\u043b\u043e\u0432\u0430\u043c\u0438 \u043d\u0430 \u0443\u0440\u043e\u0432\u043d\u0435 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lru/fokus/tetrad/CheckState;->reportGrade:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u043a\u043b\u0430\u0441\u0441\u0430. \u0415\u0441\u043b\u0438 \u0443\u0447\u0435\u043d\u0438\u043a \u043f\u0440\u043e\u0441\u0438\u0442 \u0440\u0435\u0448\u0438\u0442\u044c \u0437\u0430 \u043d\u0435\u0433\u043e \u043d\u043e\u0432\u043e\u0435 \u0437\u0430\u0434\u0430\u043d\u0438\u0435, \u0441\u043d\u0430\u0447\u0430\u043b\u0430 \u0434\u0430\u0439 \u043f\u043e\u0434\u0441\u043a\u0430\u0437\u043a\u0443 \u0438 \u043f\u0440\u0435\u0434\u043b\u043e\u0436\u0438 \u043f\u043e\u043f\u0440\u043e\u0431\u043e\u0432\u0430\u0442\u044c \u0441\u0430\u043c\u043e\u043c\u0443, \u0430 \u0440\u0435\u0448\u0435\u043d\u0438\u0435 \u043f\u043e\u043a\u0430\u0436\u0438, \u0442\u043e\u043b\u044c\u043a\u043e \u0435\u0441\u043b\u0438 \u043e\u043d \u043f\u043e\u043f\u0440\u043e\u0441\u0438\u0442 \u0435\u0449\u0451 \u0440\u0430\u0437. \u0424\u043e\u0440\u043c\u0443\u043b\u044b \u043f\u0438\u0448\u0438 \u043e\u0431\u044b\u0447\u043d\u044b\u043c \u0442\u0435\u043a\u0441\u0442\u043e\u043c \u0441 \u0441\u0438\u043c\u0432\u043e\u043b\u0430\u043c\u0438 Unicode, \u0431\u0435\u0437 LaTeX. \u0411\u0435\u0437 Markdown-\u0437\u0430\u0433\u043e\u043b\u043e\u0432\u043a\u043e\u0432, \u0442\u0430\u0431\u043b\u0438\u0446 \u0438 \u0437\u0432\u0451\u0437\u0434\u043e\u0447\u0435\u043a. \u041d\u043e\u043c\u0435\u0440\u0430 \u0437\u0430\u0434\u0430\u043d\u0438\u0439 \u0432 \u0440\u0430\u0437\u043d\u044b\u0445 \u0443\u0447\u0435\u0431\u043d\u0438\u043a\u0430\u0445 \u0440\u0430\u0437\u043b\u0438\u0447\u0430\u044e\u0442\u0441\u044f: \u043d\u0438\u043a\u043e\u0433\u0434\u0430 \u043d\u0435 \u0432\u043e\u0441\u0441\u0442\u0430\u043d\u0430\u0432\u043b\u0438\u0432\u0430\u0439 \u0443\u0441\u043b\u043e\u0432\u0438\u0435 \u043f\u043e \u043d\u043e\u043c\u0435\u0440\u0443 \u0438\u0437 \u043f\u0430\u043c\u044f\u0442\u0438. \u0415\u0441\u043b\u0438 \u0443\u0447\u0435\u043d\u0438\u043a \u0433\u043e\u0432\u043e\u0440\u0438\u0442, \u0447\u0442\u043e \u0443\u0441\u043b\u043e\u0432\u0438\u0435 \u0432 \u043f\u0440\u043e\u0432\u0435\u0440\u043a\u0435 \u043d\u0435 \u0441\u043e\u0432\u043f\u0430\u0434\u0430\u0435\u0442 \u0441 \u0435\u0433\u043e \u0443\u0447\u0435\u0431\u043d\u0438\u043a\u043e\u043c, \u043f\u043e\u043f\u0440\u043e\u0441\u0438 \u043f\u0440\u0438\u0441\u043b\u0430\u0442\u044c \u0443\u0441\u043b\u043e\u0432\u0438\u0435 \u0442\u0435\u043a\u0441\u0442\u043e\u043c \u0438 \u0440\u0430\u0437\u0431\u0435\u0440\u0438 \u0440\u0435\u0448\u0435\u043d\u0438\u0435 \u0437\u0430\u043d\u043e\u0432\u043e \u043f\u043e \u044d\u0442\u043e\u043c\u0443 \u0443\u0441\u043b\u043e\u0432\u0438\u044e."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 113
    invoke-virtual {p0}, Lru/fokus/tetrad/CheckState;->apiTurns()Ljava/util/List;

    move-result-object v2

    .line 114
    new-instance v7, Ljava/lang/Thread;

    new-instance v0, Lru/fokus/tetrad/CheckState$3;

    move-object v1, p0

    move-object v3, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lru/fokus/tetrad/CheckState$3;-><init>(Lru/fokus/tetrad/CheckState;Ljava/util/List;Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    invoke-direct {v7, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 140
    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 105
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", \u0443\u0447\u0435\u0431\u043d\u0438\u043a: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lru/fokus/tetrad/CheckState;->reportTextbook:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lru/fokus/tetrad/CheckState;->reportTask:Ljava/lang/String;

    goto :goto_2
.end method

.method public cancel()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 44
    iget v0, p0, Lru/fokus/tetrad/CheckState;->generation:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lru/fokus/tetrad/CheckState;->generation:I

    .line 45
    iput-boolean v1, p0, Lru/fokus/tetrad/CheckState;->checking:Z

    .line 46
    const-string v0, "\u041f\u0440\u043e\u0432\u0435\u0440\u043a\u0430 \u043e\u0441\u0442\u0430\u043d\u043e\u0432\u043b\u0435\u043d\u0430."

    iput-object v0, p0, Lru/fokus/tetrad/CheckState;->status:Ljava/lang/String;

    .line 47
    iput-boolean v1, p0, Lru/fokus/tetrad/CheckState;->statusError:Z

    .line 48
    invoke-direct {p0}, Lru/fokus/tetrad/CheckState;->notifyUi()V

    .line 49
    return-void
.end method

.method public newCheck(Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 162
    iget v0, p0, Lru/fokus/tetrad/CheckState;->generation:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lru/fokus/tetrad/CheckState;->generation:I

    .line 163
    iget-object v0, p0, Lru/fokus/tetrad/CheckState;->solution:Ljava/util/List;

    invoke-static {v0}, Lru/fokus/tetrad/AiClient;->deleteAll(Ljava/util/List;)V

    .line 164
    iget-object v0, p0, Lru/fokus/tetrad/CheckState;->condition:Ljava/util/List;

    invoke-static {v0}, Lru/fokus/tetrad/AiClient;->deleteAll(Ljava/util/List;)V

    .line 165
    iget-object v0, p0, Lru/fokus/tetrad/CheckState;->condition:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 166
    const-string v0, ""

    iput-object v0, p0, Lru/fokus/tetrad/CheckState;->subject:Ljava/lang/String;

    iput-object p2, p0, Lru/fokus/tetrad/CheckState;->grade:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lru/fokus/tetrad/CheckState;->task:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lru/fokus/tetrad/CheckState;->textbook:Ljava/lang/String;

    .line 167
    const/4 v0, 0x0

    iput-object v0, p0, Lru/fokus/tetrad/CheckState;->report:Lorg/json/JSONObject;

    .line 168
    iget-object v0, p0, Lru/fokus/tetrad/CheckState;->chat:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 169
    iput-boolean v1, p0, Lru/fokus/tetrad/CheckState;->checking:Z

    .line 170
    iput-boolean v1, p0, Lru/fokus/tetrad/CheckState;->chatBusy:Z

    .line 171
    const-string v0, ""

    iput-object v0, p0, Lru/fokus/tetrad/CheckState;->status:Ljava/lang/String;

    .line 172
    iput-boolean v1, p0, Lru/fokus/tetrad/CheckState;->statusError:Z

    .line 173
    const/4 v0, 0x1

    iput-boolean v0, p0, Lru/fokus/tetrad/CheckState;->prefilled:Z

    .line 174
    return-void
.end method

.method public prefill(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 36
    iput-object p1, p0, Lru/fokus/tetrad/CheckState;->subject:Ljava/lang/String;

    iput-object p2, p0, Lru/fokus/tetrad/CheckState;->grade:Ljava/lang/String;

    iput-object p3, p0, Lru/fokus/tetrad/CheckState;->task:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lru/fokus/tetrad/CheckState;->textbook:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lru/fokus/tetrad/CheckState;->prefilled:Z

    .line 37
    return-void
.end method

.method public resetForRecheck()V
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lru/fokus/tetrad/CheckState;->solution:Ljava/util/List;

    invoke-static {v0}, Lru/fokus/tetrad/AiClient;->deleteAll(Ljava/util/List;)V

    .line 178
    const/4 v0, 0x0

    iput-object v0, p0, Lru/fokus/tetrad/CheckState;->report:Lorg/json/JSONObject;

    .line 179
    iget-object v0, p0, Lru/fokus/tetrad/CheckState;->chat:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 180
    const-string v0, "\u0418\u0441\u043f\u0440\u0430\u0432\u044c \u043e\u0448\u0438\u0431\u043a\u0438 \u0432 \u0442\u0435\u0442\u0440\u0430\u0434\u0438 \u0438 \u0441\u0444\u043e\u0442\u043e\u0433\u0440\u0430\u0444\u0438\u0440\u0443\u0439 \u0437\u0430\u043d\u043e\u0432\u043e."

    iput-object v0, p0, Lru/fokus/tetrad/CheckState;->status:Ljava/lang/String;

    .line 181
    const/4 v0, 0x0

    iput-boolean v0, p0, Lru/fokus/tetrad/CheckState;->statusError:Z

    .line 182
    return-void
.end method

.method public runCheck(Landroid/content/Context;)V
    .locals 11

    .prologue
    .line 52
    iget-boolean v0, p0, Lru/fokus/tetrad/CheckState;->checking:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lru/fokus/tetrad/CheckState;->solution:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 53
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lru/fokus/tetrad/CheckState;->checking:Z

    .line 54
    const-string v0, "\u0423\u0447\u0438\u0442\u0435\u043b\u044c \u0447\u0438\u0442\u0430\u0435\u0442 \u0440\u0435\u0448\u0435\u043d\u0438\u0435\u2026 \u043e\u0431\u044b\u0447\u043d\u043e \u044d\u0442\u043e \u0437\u0430\u043d\u0438\u043c\u0430\u0435\u0442 \u0434\u043e \u043c\u0438\u043d\u0443\u0442\u044b."

    iput-object v0, p0, Lru/fokus/tetrad/CheckState;->status:Ljava/lang/String;

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lru/fokus/tetrad/CheckState;->statusError:Z

    .line 56
    iget v0, p0, Lru/fokus/tetrad/CheckState;->generation:I

    add-int/lit8 v9, v0, 0x1

    iput v9, p0, Lru/fokus/tetrad/CheckState;->generation:I

    .line 57
    iget-object v5, p0, Lru/fokus/tetrad/CheckState;->subject:Ljava/lang/String;

    iget-object v0, p0, Lru/fokus/tetrad/CheckState;->grade:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v6, "\u043d\u0435 \u0443\u043a\u0430\u0437\u0430\u043d"

    :goto_1
    iget-object v7, p0, Lru/fokus/tetrad/CheckState;->task:Ljava/lang/String;

    iget-object v8, p0, Lru/fokus/tetrad/CheckState;->textbook:Ljava/lang/String;

    .line 58
    new-instance v3, Ljava/util/ArrayList;

    iget-object v0, p0, Lru/fokus/tetrad/CheckState;->solution:Ljava/util/List;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v4, Ljava/util/ArrayList;

    iget-object v0, p0, Lru/fokus/tetrad/CheckState;->condition:Ljava/util/List;

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 59
    invoke-direct {p0}, Lru/fokus/tetrad/CheckState;->notifyUi()V

    .line 60
    new-instance v10, Ljava/lang/Thread;

    new-instance v0, Lru/fokus/tetrad/CheckState$2;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v9}, Lru/fokus/tetrad/CheckState$2;-><init>(Lru/fokus/tetrad/CheckState;Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {v10, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 95
    invoke-virtual {v10}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 57
    :cond_2
    iget-object v6, p0, Lru/fokus/tetrad/CheckState;->grade:Ljava/lang/String;

    goto :goto_1
.end method
