.class public Lru/fokus/tetrad/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# static fields
.field static final MAX_PHOTOS:I = 0x5

.field private static final RC_CAM:I = 0x1

.field private static final RC_GAL:I = 0x2

.field private static final RC_MESH_LOGIN:I = 0x28

.field private static final RC_MESH_PAGE:I = 0x29

.field private static final RC_MESH_PICK:I = 0x2a

.field private static final RC_NOTIF:I = 0x1e


# instance fields
.field private classifying:Z

.field private content:Landroid/widget/LinearLayout;

.field private meshBusy:Z

.field private pendingExternal:I

.field private status:Ljava/lang/String;

.field private store:Lru/fokus/tetrad/Store;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lru/fokus/tetrad/MainActivity;->status:Ljava/lang/String;

    .line 186
    iput-boolean v1, p0, Lru/fokus/tetrad/MainActivity;->classifying:Z

    .line 187
    const/4 v0, -0x1

    iput v0, p0, Lru/fokus/tetrad/MainActivity;->pendingExternal:I

    .line 309
    iput-boolean v1, p0, Lru/fokus/tetrad/MainActivity;->meshBusy:Z

    return-void
.end method

.method static synthetic access$000(Lru/fokus/tetrad/MainActivity;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lru/fokus/tetrad/MainActivity;->openSettings()V

    return-void
.end method

.method static synthetic access$100(Lru/fokus/tetrad/MainActivity;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lru/fokus/tetrad/MainActivity;->fetchMesh()V

    return-void
.end method

.method static synthetic access$1000(Lru/fokus/tetrad/MainActivity;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lru/fokus/tetrad/MainActivity;->classifyAsync()V

    return-void
.end method

.method static synthetic access$1102(Lru/fokus/tetrad/MainActivity;Z)Z
    .locals 0

    .prologue
    .line 26
    iput-boolean p1, p0, Lru/fokus/tetrad/MainActivity;->classifying:Z

    return p1
.end method

.method static synthetic access$1202(Lru/fokus/tetrad/MainActivity;Z)Z
    .locals 0

    .prologue
    .line 26
    iput-boolean p1, p0, Lru/fokus/tetrad/MainActivity;->meshBusy:Z

    return p1
.end method

.method static synthetic access$1300(Lru/fokus/tetrad/MainActivity;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lru/fokus/tetrad/MainActivity;->openMeshPage()V

    return-void
.end method

.method static synthetic access$1400(Lru/fokus/tetrad/MainActivity;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lru/fokus/tetrad/MainActivity;->pickHomework(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1502(Lru/fokus/tetrad/MainActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lru/fokus/tetrad/MainActivity;->status:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1600(Lru/fokus/tetrad/MainActivity;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lru/fokus/tetrad/MainActivity;->checkBlocker()V

    return-void
.end method

.method static synthetic access$1700(Lru/fokus/tetrad/MainActivity;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lru/fokus/tetrad/MainActivity;->startNow()V

    return-void
.end method

.method static synthetic access$200(Lru/fokus/tetrad/MainActivity;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lru/fokus/tetrad/MainActivity;->meshLogin()V

    return-void
.end method

.method static synthetic access$300(Lru/fokus/tetrad/MainActivity;I)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lru/fokus/tetrad/MainActivity;->typeTask(I)V

    return-void
.end method

.method static synthetic access$400(Lru/fokus/tetrad/MainActivity;)Lru/fokus/tetrad/Store;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lru/fokus/tetrad/MainActivity;->store:Lru/fokus/tetrad/Store;

    return-object v0
.end method

.method static synthetic access$500(Lru/fokus/tetrad/MainActivity;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lru/fokus/tetrad/MainActivity;->render()V

    return-void
.end method

.method static synthetic access$600(Lru/fokus/tetrad/MainActivity;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lru/fokus/tetrad/MainActivity;->tryStart()V

    return-void
.end method

.method static synthetic access$700(Lru/fokus/tetrad/MainActivity;I)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lru/fokus/tetrad/MainActivity;->removeItem(I)V

    return-void
.end method

.method static synthetic access$800(Lru/fokus/tetrad/MainActivity;I)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lru/fokus/tetrad/MainActivity;->chooseKind(I)V

    return-void
.end method

.method static synthetic access$900(Lru/fokus/tetrad/MainActivity;)I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lru/fokus/tetrad/MainActivity;->pendingExternal:I

    return v0
.end method

.method static synthetic access$902(Lru/fokus/tetrad/MainActivity;I)I
    .locals 0

    .prologue
    .line 26
    iput p1, p0, Lru/fokus/tetrad/MainActivity;->pendingExternal:I

    return p1
.end method

.method private addPicked(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lru/fokus/tetrad/Mesh$Hw;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 359
    iget-object v0, p0, Lru/fokus/tetrad/MainActivity;->store:Lru/fokus/tetrad/Store;

    invoke-virtual {v0}, Lru/fokus/tetrad/Store;->lessonItems()Lorg/json/JSONArray;

    move-result-object v1

    .line 360
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/fokus/tetrad/Mesh$Hw;

    iget-object v3, v0, Lru/fokus/tetrad/Mesh$Hw;->subject:Ljava/lang/String;

    iget-object v0, v0, Lru/fokus/tetrad/Mesh$Hw;->text:Ljava/lang/String;

    const-string v4, "mesh"

    invoke-static {v3, v0, v4}, Lru/fokus/tetrad/Homework;->item(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 361
    :cond_0
    iget-object v0, p0, Lru/fokus/tetrad/MainActivity;->store:Lru/fokus/tetrad/Store;

    invoke-virtual {v0, v1}, Lru/fokus/tetrad/Store;->setLessonItems(Lorg/json/JSONArray;)V

    .line 362
    invoke-direct {p0}, Lru/fokus/tetrad/MainActivity;->render()V

    .line 363
    invoke-direct {p0}, Lru/fokus/tetrad/MainActivity;->classifyAsync()V

    .line 364
    return-void
.end method

.method private askGrade()V
    .locals 5

    .prologue
    const/16 v4, 0xb

    .line 439
    new-array v1, v4, [Ljava/lang/String;

    .line 440
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \u043a\u043b\u0430\u0441\u0441"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 441
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "\u0412 \u043a\u0430\u043a\u043e\u043c \u0442\u044b \u043a\u043b\u0430\u0441\u0441\u0435?"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lru/fokus/tetrad/MainActivity$23;

    invoke-direct {v2, p0}, Lru/fokus/tetrad/MainActivity$23;-><init>(Lru/fokus/tetrad/MainActivity;)V

    .line 442
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 445
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 446
    return-void
.end method

.method private checkBlocker()V
    .locals 3

    .prologue
    .line 449
    invoke-static {p0}, Lru/fokus/tetrad/BlockerService;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 450
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u0411\u043b\u043e\u043a\u0438\u0440\u043e\u0432\u043a\u0430 \u0432\u044b\u043a\u043b\u044e\u0447\u0435\u043d\u0430"

    .line 451
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u0411\u0435\u0437 \u043d\u0435\u0451 \u0431\u0443\u0434\u0435\u0442 \u0440\u0430\u0431\u043e\u0442\u0430\u0442\u044c \u0442\u043e\u043b\u044c\u043a\u043e \u0442\u0430\u0439\u043c\u0435\u0440, \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u044f \u0431\u0443\u0434\u0443\u0442 \u043e\u0442\u043a\u0440\u044b\u0432\u0430\u0442\u044c\u0441\u044f. \u0412\u043a\u043b\u044e\u0447\u0438\u0442\u044c \u0431\u043b\u043e\u043a\u0438\u0440\u043e\u0432\u043a\u0443?"

    .line 452
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u0412\u043a\u043b\u044e\u0447\u0438\u0442\u044c"

    new-instance v2, Lru/fokus/tetrad/MainActivity$25;

    invoke-direct {v2, p0}, Lru/fokus/tetrad/MainActivity$25;-><init>(Lru/fokus/tetrad/MainActivity;)V

    .line 453
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u041d\u0430\u0447\u0430\u0442\u044c \u0442\u0430\u043a"

    new-instance v2, Lru/fokus/tetrad/MainActivity$24;

    invoke-direct {v2, p0}, Lru/fokus/tetrad/MainActivity$24;-><init>(Lru/fokus/tetrad/MainActivity;)V

    .line 454
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 455
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 459
    :goto_0
    return-void

    .line 458
    :cond_0
    invoke-direct {p0}, Lru/fokus/tetrad/MainActivity;->startNow()V

    goto :goto_0
.end method

.method private chooseKind(I)V
    .locals 6

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 241
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "written"

    aput-object v1, v0, v4

    const-string v1, "oral"

    aput-object v1, v0, v5

    .line 242
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "\u041a\u0430\u043a\u043e\u0435 \u044d\u0442\u043e \u0437\u0430\u0434\u0430\u043d\u0438\u0435?"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/String;

    const-string v3, "\u041f\u0438\u0441\u044c\u043c\u0435\u043d\u043d\u043e\u0435 \u2014 \u043f\u0440\u043e\u0432\u0435\u0440\u043a\u0430 \u043f\u043e \u0444\u043e\u0442\u043e"

    aput-object v3, v2, v4

    const-string v3, "\u0423\u0441\u0442\u043d\u043e\u0435 \u2014 \u0431\u043b\u0438\u0446-\u043e\u043f\u0440\u043e\u0441"

    aput-object v3, v2, v5

    new-instance v3, Lru/fokus/tetrad/MainActivity$15;

    invoke-direct {v3, p0, p1, v0}, Lru/fokus/tetrad/MainActivity$15;-><init>(Lru/fokus/tetrad/MainActivity;I[Ljava/lang/String;)V

    .line 243
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 250
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 251
    return-void
.end method

.method private classifyAsync()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 289
    iget-object v0, p0, Lru/fokus/tetrad/MainActivity;->store:Lru/fokus/tetrad/Store;

    invoke-virtual {v0}, Lru/fokus/tetrad/Store;->lessonItems()Lorg/json/JSONArray;

    move-result-object v4

    move v0, v1

    move v2, v1

    .line 291
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v5, "checked"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    move v1, v3

    :goto_1
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    goto :goto_0

    .line 292
    :cond_0
    if-eqz v2, :cond_1

    iget-object v0, p0, Lru/fokus/tetrad/MainActivity;->store:Lru/fokus/tetrad/Store;

    invoke-virtual {v0}, Lru/fokus/tetrad/Store;->aiReady()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lru/fokus/tetrad/MainActivity;->classifying:Z

    if-eqz v0, :cond_2

    .line 304
    :cond_1
    :goto_2
    return-void

    .line 293
    :cond_2
    iput-boolean v3, p0, Lru/fokus/tetrad/MainActivity;->classifying:Z

    .line 294
    invoke-direct {p0}, Lru/fokus/tetrad/MainActivity;->render()V

    .line 295
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lru/fokus/tetrad/MainActivity$17;

    invoke-direct {v1, p0, v4}, Lru/fokus/tetrad/MainActivity$17;-><init>(Lru/fokus/tetrad/MainActivity;Lorg/json/JSONArray;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 303
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_2

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method private fetchMesh()V
    .locals 2

    .prologue
    .line 316
    const/4 v0, 0x1

    iput-boolean v0, p0, Lru/fokus/tetrad/MainActivity;->meshBusy:Z

    .line 317
    invoke-direct {p0}, Lru/fokus/tetrad/MainActivity;->render()V

    .line 318
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lru/fokus/tetrad/MainActivity$18;

    invoke-direct {v1, p0}, Lru/fokus/tetrad/MainActivity$18;-><init>(Lru/fokus/tetrad/MainActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 344
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 345
    return-void
.end method

.method private static firstIndex(Ljava/util/List;Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lru/fokus/tetrad/Mesh$Hw;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .line 367
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/fokus/tetrad/Mesh$Hw;

    iget-object v0, v0, Lru/fokus/tetrad/Mesh$Hw;->date:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/fokus/tetrad/Mesh$Hw;

    iget-boolean v0, v0, Lru/fokus/tetrad/Mesh$Hw;->done:Z

    if-nez v0, :cond_0

    .line 368
    :goto_1
    return v1

    .line 367
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 368
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private itemBox(Lorg/json/JSONArray;ILorg/json/JSONObject;)Landroid/view/View;
    .locals 8

    .prologue
    .line 190
    const-string v0, "kind"

    const-string v1, "written"

    invoke-virtual {p3, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 191
    const-string v0, "oral"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget v0, Lru/fokus/tetrad/Ui;->OK:I

    .line 192
    :goto_0
    const-string v1, "oral"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget v1, Lru/fokus/tetrad/Ui;->OK_SOFT:I

    .line 193
    :goto_1
    const/4 v3, 0x6

    invoke-static {p0, v3}, Lru/fokus/tetrad/Ui;->col(Landroid/content/Context;I)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 194
    const/high16 v4, 0x41600000    # 14.0f

    invoke-static {v4}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v4

    const/high16 v5, 0x41400000    # 12.0f

    invoke-static {v5}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v5

    const/high16 v6, 0x41000000    # 8.0f

    invoke-static {v6}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v6

    const/high16 v7, 0x41400000    # 12.0f

    invoke-static {v7}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 195
    const/high16 v4, 0x41600000    # 14.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v1, v4, v5, v6}, Lru/fokus/tetrad/Ui;->round(IFIF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 196
    const/4 v1, 0x6

    invoke-static {p0, v1}, Lru/fokus/tetrad/Ui;->row(Landroid/content/Context;I)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 197
    const-string v1, "subject"

    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 198
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v1, "\u0417\u0430\u0434\u0430\u043d\u0438\u0435"

    :cond_0
    const/high16 v5, 0x41700000    # 15.0f

    sget v6, Lru/fokus/tetrad/Ui;->FG:I

    sget-object v7, Lru/fokus/tetrad/Ui;->BOLD:Landroid/graphics/Typeface;

    invoke-static {p0, v1, v5, v6, v7}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v1

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v5}, Lru/fokus/tetrad/Ui;->weight(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 199
    const-string v1, "\u0423\u0431\u0440\u0430\u0442\u044c"

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static {p0, v1, v5, v6}, Lru/fokus/tetrad/Ui;->button(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v1

    .line 200
    new-instance v5, Lru/fokus/tetrad/MainActivity$10;

    invoke-direct {v5, p0, p2}, Lru/fokus/tetrad/MainActivity$10;-><init>(Lru/fokus/tetrad/MainActivity;I)V

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 202
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 203
    const-string v1, "text"

    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/high16 v4, 0x41700000    # 15.0f

    sget v5, Lru/fokus/tetrad/Ui;->FG:I

    sget-object v6, Lru/fokus/tetrad/Ui;->BODY:Landroid/graphics/Typeface;

    invoke-static {p0, v1, v4, v5, v6}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v1

    .line 204
    const/4 v4, 0x6

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 205
    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 206
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 207
    const/4 v1, 0x6

    invoke-static {p0, v1}, Lru/fokus/tetrad/Ui;->row(Landroid/content/Context;I)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 208
    invoke-static {v2}, Lru/fokus/tetrad/Homework;->label(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/high16 v5, 0x41500000    # 13.0f

    sget-object v6, Lru/fokus/tetrad/Ui;->BOLD:Landroid/graphics/Typeface;

    invoke-static {p0, v4, v5, v0, v6}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v4}, Lru/fokus/tetrad/Ui;->weight(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 209
    const-string v0, "external"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 210
    const-string v0, "\u0418\u0437\u043c\u0435\u043d\u0438\u0442\u044c"

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static {p0, v0, v4, v5}, Lru/fokus/tetrad/Ui;->button(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v0

    .line 211
    const/high16 v4, 0x41500000    # 13.0f

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 212
    new-instance v4, Lru/fokus/tetrad/MainActivity$11;

    invoke-direct {v4, p0, p2}, Lru/fokus/tetrad/MainActivity$11;-><init>(Lru/fokus/tetrad/MainActivity;I)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 215
    :cond_1
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 216
    const-string v0, "external"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 217
    const-string v0, "\u041f\u043e\u0445\u043e\u0436\u0435, \u0437\u0430\u0434\u0430\u043d\u0438\u0435 \u043b\u0435\u0436\u0438\u0442 \u0432 \u0434\u0440\u0443\u0433\u043e\u043c \u043c\u0435\u0441\u0442\u0435 (\u0433\u0440\u0443\u043f\u043f\u0430 \u043a\u043b\u0430\u0441\u0441\u0430, \u0432\u043b\u043e\u0436\u0435\u043d\u0438\u0435). \u041f\u0440\u0438\u0448\u043b\u0438 \u0444\u043e\u0442\u043e \u0437\u0430\u0434\u0430\u043d\u0438\u044f \u0438\u043b\u0438 \u0435\u0433\u043e \u0442\u0435\u043a\u0441\u0442 \u2014 \u0438\u043b\u0438 \u043f\u0440\u043e\u043f\u0443\u0441\u0442\u0438."

    const/high16 v1, 0x41600000    # 14.0f

    sget v2, Lru/fokus/tetrad/Ui;->FG:I

    sget-object v4, Lru/fokus/tetrad/Ui;->BODY:Landroid/graphics/Typeface;

    invoke-static {p0, v0, v1, v2, v4}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 218
    const/16 v0, 0x8

    invoke-static {p0, v0}, Lru/fokus/tetrad/Ui;->row(Landroid/content/Context;I)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 219
    const-string v1, "\u0424\u043e\u0442\u043e"

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-static {p0, v1, v2, v4}, Lru/fokus/tetrad/Ui;->button(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v1

    .line 220
    new-instance v2, Lru/fokus/tetrad/MainActivity$12;

    invoke-direct {v2, p0, p2}, Lru/fokus/tetrad/MainActivity$12;-><init>(Lru/fokus/tetrad/MainActivity;I)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    const-string v2, "\u0422\u0435\u043a\u0441\u0442"

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {p0, v2, v4, v5}, Lru/fokus/tetrad/Ui;->button(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v2

    .line 222
    new-instance v4, Lru/fokus/tetrad/MainActivity$13;

    invoke-direct {v4, p0, p2}, Lru/fokus/tetrad/MainActivity$13;-><init>(Lru/fokus/tetrad/MainActivity;I)V

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    const-string v4, "\u041f\u0440\u043e\u043f\u0443\u0441\u0442\u0438\u0442\u044c"

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static {p0, v4, v5, v6}, Lru/fokus/tetrad/Ui;->button(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v4

    .line 224
    new-instance v5, Lru/fokus/tetrad/MainActivity$14;

    invoke-direct {v5, p0, p2}, Lru/fokus/tetrad/MainActivity$14;-><init>(Lru/fokus/tetrad/MainActivity;I)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v5}, Lru/fokus/tetrad/Ui;->weight(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 226
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Lru/fokus/tetrad/Ui;->weight(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 227
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Lru/fokus/tetrad/Ui;->weight(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 228
    invoke-static {}, Lru/fokus/tetrad/Ui;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 230
    :cond_2
    return-object v3

    .line 191
    :cond_3
    const-string v0, "external"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget v0, Lru/fokus/tetrad/Ui;->WARN:I

    goto/16 :goto_0

    :cond_4
    sget v0, Lru/fokus/tetrad/Ui;->INK:I

    goto/16 :goto_0

    .line 192
    :cond_5
    const-string v1, "external"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    sget v1, Lru/fokus/tetrad/Ui;->WARN_SOFT:I

    goto/16 :goto_1

    :cond_6
    sget v1, Lru/fokus/tetrad/Ui;->INK_SOFT:I

    goto/16 :goto_1
.end method

.method private meshLogin()V
    .locals 3

    .prologue
    .line 312
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lru/fokus/tetrad/MeshActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "mode"

    const-string v2, "login"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x28

    invoke-virtual {p0, v0, v1}, Lru/fokus/tetrad/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 313
    return-void
.end method

.method private openMeshPage()V
    .locals 3

    .prologue
    .line 348
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lru/fokus/tetrad/MeshActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "mode"

    const-string v2, "page"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {p0, v0, v1}, Lru/fokus/tetrad/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 349
    return-void
.end method

.method private openSettings()V
    .locals 2

    .prologue
    .line 179
    const-string v0, "\u041d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0438 \u043c\u043e\u0436\u0435\u0442 \u043c\u0435\u043d\u044f\u0442\u044c \u0442\u043e\u043b\u044c\u043a\u043e \u0440\u043e\u0434\u0438\u0442\u0435\u043b\u044c."

    new-instance v1, Lru/fokus/tetrad/MainActivity$9;

    invoke-direct {v1, p0}, Lru/fokus/tetrad/MainActivity$9;-><init>(Lru/fokus/tetrad/MainActivity;)V

    invoke-static {p0, v0, v1}, Lru/fokus/tetrad/Pin;->guard(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 182
    return-void
.end method

.method private pickHomework(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lru/fokus/tetrad/Mesh$Hw;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 354
    sput-object p1, Lru/fokus/tetrad/HomeworkPickerActivity;->input:Ljava/util/List;

    .line 355
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lru/fokus/tetrad/HomeworkPickerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x2a

    invoke-virtual {p0, v0, v1}, Lru/fokus/tetrad/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 356
    return-void
.end method

.method private removeItem(I)V
    .locals 4

    .prologue
    .line 234
    iget-object v0, p0, Lru/fokus/tetrad/MainActivity;->store:Lru/fokus/tetrad/Store;

    invoke-virtual {v0}, Lru/fokus/tetrad/Store;->lessonItems()Lorg/json/JSONArray;

    move-result-object v1

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 235
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    if-eq v0, p1, :cond_0

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 236
    :cond_1
    iget-object v0, p0, Lru/fokus/tetrad/MainActivity;->store:Lru/fokus/tetrad/Store;

    invoke-virtual {v0, v2}, Lru/fokus/tetrad/Store;->setLessonItems(Lorg/json/JSONArray;)V

    .line 237
    invoke-direct {p0}, Lru/fokus/tetrad/MainActivity;->render()V

    .line 238
    return-void
.end method

.method private render()V
    .locals 13

    .prologue
    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v11, 0x41600000    # 14.0f

    const/4 v10, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 59
    iget-object v0, p0, Lru/fokus/tetrad/MainActivity;->content:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 62
    const/16 v0, 0xc

    invoke-static {p0, v0}, Lru/fokus/tetrad/Ui;->row(Landroid/content/Context;I)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 63
    invoke-static {p0, v10}, Lru/fokus/tetrad/Ui;->col(Landroid/content/Context;I)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 64
    const-string v0, "\u0424\u043e\u043a\u0443\u0441-\u0442\u0435\u0442\u0440\u0430\u0434\u044c"

    const/high16 v5, 0x41a00000    # 20.0f

    sget v6, Lru/fokus/tetrad/Ui;->FG:I

    sget-object v7, Lru/fokus/tetrad/Ui;->DISPLAY:Landroid/graphics/Typeface;

    invoke-static {p0, v0, v5, v6, v7}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v0

    .line 65
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 66
    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 67
    iget-object v0, p0, Lru/fokus/tetrad/MainActivity;->store:Lru/fokus/tetrad/Store;

    invoke-virtual {v0}, Lru/fokus/tetrad/Store;->streak()I

    move-result v0

    .line 68
    if-lez v0, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u0417\u0430\u043d\u0438\u043c\u0430\u0435\u0448\u044c\u0441\u044f "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    int-to-long v6, v0

    const-string v0, "\u0434\u0435\u043d\u044c"

    const-string v8, "\u0434\u043d\u044f"

    const-string v9, "\u0434\u043d\u0435\u0439"

    invoke-static {v6, v7, v0, v8, v9}, Lru/fokus/tetrad/Ui;->plural(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " \u043f\u043e\u0434\u0440\u044f\u0434"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 69
    :goto_0
    invoke-static {p0}, Lru/fokus/tetrad/LessonReminders;->week(Landroid/content/Context;)Lru/fokus/tetrad/Schedule$Week;

    move-result-object v5

    .line 70
    invoke-virtual {v5}, Lru/fokus/tetrad/Schedule$Week;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 71
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 72
    invoke-static {v5, v6}, Lru/fokus/tetrad/Schedule;->current(Lru/fokus/tetrad/Schedule$Week;Ljava/util/Calendar;)Lru/fokus/tetrad/Schedule$Lesson;

    move-result-object v7

    invoke-static {v5, v6}, Lru/fokus/tetrad/Schedule;->nextToday(Lru/fokus/tetrad/Schedule$Week;Ljava/util/Calendar;)Lru/fokus/tetrad/Schedule$Lesson;

    move-result-object v5

    .line 73
    if-eqz v7, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u0421\u0435\u0439\u0447\u0430\u0441 "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, v7, Lru/fokus/tetrad/Schedule$Lesson;->subject:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " \u0434\u043e "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, v7, Lru/fokus/tetrad/Schedule$Lesson;->end:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 76
    :cond_0
    :goto_1
    sget v5, Lru/fokus/tetrad/Ui;->MUTED:I

    sget-object v6, Lru/fokus/tetrad/Ui;->BODY:Landroid/graphics/Typeface;

    invoke-static {p0, v0, v11, v5, v6}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 77
    invoke-static {v12}, Lru/fokus/tetrad/Ui;->weight(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 78
    const-string v0, "\u2699"

    const-string v4, "\u041d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0438"

    invoke-static {p0, v0, v4}, Lru/fokus/tetrad/Ui;->iconButton(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    .line 79
    new-instance v4, Lru/fokus/tetrad/MainActivity$1;

    invoke-direct {v4, p0}, Lru/fokus/tetrad/MainActivity$1;-><init>(Lru/fokus/tetrad/MainActivity;)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x42400000    # 48.0f

    invoke-static {v5}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v5

    const/high16 v6, 0x42400000    # 48.0f

    invoke-static {v6}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 81
    iget-object v0, p0, Lru/fokus/tetrad/MainActivity;->content:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 83
    invoke-static {p0}, Lru/fokus/tetrad/BlockerService;->isEnabled(Landroid/content/Context;)Z

    move-result v4

    .line 84
    if-eqz v4, :cond_5

    invoke-static {p0}, Lru/fokus/tetrad/BlockerService;->hasUsageAccess(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p0}, Lru/fokus/tetrad/BlockerService;->batteryUnrestricted(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 85
    invoke-static {p0}, Lru/fokus/tetrad/BlockerService;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v2

    .line 86
    :goto_2
    if-nez v0, :cond_1

    .line 87
    const/16 v0, 0xa

    invoke-static {p0, v0}, Lru/fokus/tetrad/Ui;->row(Landroid/content/Context;I)Landroid/widget/LinearLayout;

    move-result-object v5

    .line 88
    invoke-static {v11}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v0

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v3}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v3

    const/high16 v6, 0x41000000    # 8.0f

    invoke-static {v6}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v6

    const/high16 v7, 0x41000000    # 8.0f

    invoke-static {v7}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v7

    invoke-virtual {v5, v0, v3, v6, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 89
    if-eqz v4, :cond_6

    sget v0, Lru/fokus/tetrad/Ui;->WARN_SOFT:I

    :goto_3
    const/4 v3, 0x0

    invoke-static {v0, v11, v1, v3}, Lru/fokus/tetrad/Ui;->round(IFIF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 90
    if-eqz v4, :cond_7

    const-string v0, "\u0411\u043b\u043e\u043a\u0438\u0440\u043e\u0432\u043a\u0430 \u043d\u0430\u0441\u0442\u0440\u043e\u0435\u043d\u0430 \u043d\u0435 \u0434\u043e \u043a\u043e\u043d\u0446\u0430"

    move-object v3, v0

    :goto_4
    if-eqz v4, :cond_8

    sget v0, Lru/fokus/tetrad/Ui;->WARN:I

    :goto_5
    sget-object v6, Lru/fokus/tetrad/Ui;->MEDIUM:Landroid/graphics/Typeface;

    invoke-static {p0, v3, v11, v0, v6}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v12}, Lru/fokus/tetrad/Ui;->weight(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v5, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 91
    const-string v0, "\u041d\u0430\u0441\u0442\u0440\u043e\u0438\u0442\u044c"

    const/4 v3, 0x3

    invoke-static {p0, v0, v3, v1}, Lru/fokus/tetrad/Ui;->button(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v3

    .line 92
    if-eqz v4, :cond_9

    sget v0, Lru/fokus/tetrad/Ui;->WARN:I

    :goto_6
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 93
    new-instance v0, Lru/fokus/tetrad/MainActivity$2;

    invoke-direct {v0, p0}, Lru/fokus/tetrad/MainActivity$2;-><init>(Lru/fokus/tetrad/MainActivity;)V

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 95
    iget-object v0, p0, Lru/fokus/tetrad/MainActivity;->content:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 99
    :cond_1
    iget-object v0, p0, Lru/fokus/tetrad/MainActivity;->store:Lru/fokus/tetrad/Store;

    invoke-virtual {v0}, Lru/fokus/tetrad/Store;->lessonPhotos()Ljava/util/List;

    move-result-object v3

    .line 100
    invoke-static {p0}, Lru/fokus/tetrad/Ui;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 101
    const-string v0, "\u0427\u0442\u043e \u0437\u0430\u0434\u0430\u043b\u0438?"

    invoke-static {p0, v0}, Lru/fokus/tetrad/Ui;->title(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 104
    iget-object v0, p0, Lru/fokus/tetrad/MainActivity;->store:Lru/fokus/tetrad/Store;

    invoke-virtual {v0}, Lru/fokus/tetrad/Store;->lessonItems()Lorg/json/JSONArray;

    move-result-object v5

    move v0, v1

    .line 105
    :goto_7
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v0, v6, :cond_a

    .line 106
    invoke-virtual {v5, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 107
    if-eqz v6, :cond_2

    invoke-direct {p0, v5, v0, v6}, Lru/fokus/tetrad/MainActivity;->itemBox(Lorg/json/JSONArray;ILorg/json/JSONObject;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 105
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 68
    :cond_3
    const-string v0, "\u0414\u043e\u043c\u0430\u0448\u043a\u0430 \u0431\u0435\u0437 \u043e\u0442\u0432\u043b\u0435\u0447\u0435\u043d\u0438\u0439"

    goto/16 :goto_0

    .line 74
    :cond_4
    if-eqz v5, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u0421\u043b\u0435\u0434\u0443\u044e\u0449\u0438\u0439 \u0443\u0440\u043e\u043a: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v6, v5, Lru/fokus/tetrad/Schedule$Lesson;->subject:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " \u0432 "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, v5, Lru/fokus/tetrad/Schedule$Lesson;->start:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_5
    move v0, v1

    .line 85
    goto/16 :goto_2

    .line 89
    :cond_6
    sget v0, Lru/fokus/tetrad/Ui;->RED_SOFT:I

    goto/16 :goto_3

    .line 90
    :cond_7
    const-string v0, "\u0411\u043b\u043e\u043a\u0438\u0440\u043e\u0432\u043a\u0430 \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u0439 \u0432\u044b\u043a\u043b\u044e\u0447\u0435\u043d\u0430"

    move-object v3, v0

    goto/16 :goto_4

    :cond_8
    sget v0, Lru/fokus/tetrad/Ui;->RED:I

    goto/16 :goto_5

    .line 92
    :cond_9
    sget v0, Lru/fokus/tetrad/Ui;->RED:I

    goto :goto_6

    .line 109
    :cond_a
    iget-boolean v0, p0, Lru/fokus/tetrad/MainActivity;->classifying:Z

    if-eqz v0, :cond_b

    const-string v0, "\u0418\u0418 \u043e\u043f\u0440\u0435\u0434\u0435\u043b\u044f\u0435\u0442, \u043f\u0438\u0441\u044c\u043c\u0435\u043d\u043d\u043e\u0435 \u0437\u0430\u0434\u0430\u043d\u0438\u0435 \u0438\u043b\u0438 \u0443\u0441\u0442\u043d\u043e\u0435\u2026"

    const/high16 v5, 0x41500000    # 13.0f

    sget v6, Lru/fokus/tetrad/Ui;->MUTED:I

    sget-object v7, Lru/fokus/tetrad/Ui;->BODY:Landroid/graphics/Typeface;

    invoke-static {p0, v0, v5, v6, v7}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 110
    :cond_b
    iget-object v0, p0, Lru/fokus/tetrad/MainActivity;->store:Lru/fokus/tetrad/Store;

    invoke-virtual {v0}, Lru/fokus/tetrad/Store;->lessonText()Ljava/lang/String;

    move-result-object v5

    .line 111
    const/16 v0, 0xa

    invoke-static {p0, v0}, Lru/fokus/tetrad/Ui;->row(Landroid/content/Context;I)Landroid/widget/LinearLayout;

    move-result-object v6

    .line 112
    invoke-static {p0}, Lru/fokus/tetrad/Mesh;->loggedIn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lru/fokus/tetrad/MainActivity;->meshBusy:Z

    if-eqz v0, :cond_f

    const-string v0, "\u0417\u0430\u0433\u0440\u0443\u0436\u0430\u044e\u2026"

    :goto_8
    invoke-static {p0, v0, v2, v1}, Lru/fokus/tetrad/Ui;->button(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v7

    .line 113
    iget-boolean v0, p0, Lru/fokus/tetrad/MainActivity;->meshBusy:Z

    if-nez v0, :cond_11

    move v0, v2

    :goto_9
    invoke-static {v7, v0}, Lru/fokus/tetrad/Ui;->setEnabled(Landroid/view/View;Z)V

    .line 114
    new-instance v0, Lru/fokus/tetrad/MainActivity$3;

    invoke-direct {v0, p0}, Lru/fokus/tetrad/MainActivity$3;-><init>(Lru/fokus/tetrad/MainActivity;)V

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    invoke-static {v12}, Lru/fokus/tetrad/Ui;->weight(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v6, v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 118
    const-string v0, "\u0412\u0432\u0435\u0441\u0442\u0438 \u0442\u0435\u043a\u0441\u0442\u043e\u043c"

    invoke-static {p0, v0, v2, v1}, Lru/fokus/tetrad/Ui;->button(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v0

    .line 119
    new-instance v7, Lru/fokus/tetrad/MainActivity$4;

    invoke-direct {v7, p0}, Lru/fokus/tetrad/MainActivity$4;-><init>(Lru/fokus/tetrad/MainActivity;)V

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    invoke-static {v12}, Lru/fokus/tetrad/Ui;->weight(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v6, v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    invoke-static {}, Lru/fokus/tetrad/Ui;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v4, v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 123
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 124
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "\u0421\u0444\u043e\u0442\u043e\u0433\u0440\u0430\u0444\u0438\u0440\u0443\u0439 \u0437\u0430\u0434\u0430\u043d\u0438\u0435"

    .line 125
    :goto_a
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_13

    const-string v3, "\u0421\u0442\u0440\u0430\u043d\u0438\u0446\u0443 \u0443\u0447\u0435\u0431\u043d\u0438\u043a\u0430 \u0438\u043b\u0438 \u043b\u0438\u0441\u0442\u043e\u043a \u0441 \u0437\u0430\u0434\u0430\u043d\u0438\u0435\u043c. \u041f\u043e\u0442\u043e\u043c \u0418\u0418 \u043f\u0440\u043e\u0432\u0435\u0440\u0438\u0442 \u0440\u0435\u0448\u0435\u043d\u0438\u0435 \u0438\u043c\u0435\u043d\u043d\u043e \u043f\u043e \u043d\u0435\u043c\u0443."

    .line 124
    :goto_b
    invoke-static {p0, v0, v3, v2, v10}, Lru/fokus/tetrad/Photos;->dropZone(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;II)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 138
    :cond_c
    :goto_c
    iget-object v0, p0, Lru/fokus/tetrad/MainActivity;->status:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lru/fokus/tetrad/MainActivity;->status:Ljava/lang/String;

    sget v3, Lru/fokus/tetrad/Ui;->RED:I

    sget-object v5, Lru/fokus/tetrad/Ui;->MEDIUM:Landroid/graphics/Typeface;

    invoke-static {p0, v0, v11, v3, v5}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 139
    :cond_d
    iget-object v0, p0, Lru/fokus/tetrad/MainActivity;->content:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 142
    invoke-static {p0}, Lru/fokus/tetrad/Ui;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 143
    iget-object v0, p0, Lru/fokus/tetrad/MainActivity;->store:Lru/fokus/tetrad/Store;

    invoke-virtual {v0}, Lru/fokus/tetrad/Store;->blocked()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v4

    iget-object v0, p0, Lru/fokus/tetrad/MainActivity;->store:Lru/fokus/tetrad/Store;

    invoke-virtual {v0}, Lru/fokus/tetrad/Store;->blockSettings()Z

    move-result v0

    if-eqz v0, :cond_15

    move v0, v2

    :goto_d
    add-int/2addr v0, v4

    .line 144
    const-string v4, "\u041d\u0430\u0447\u0430\u0442\u044c \u0437\u0430\u043d\u044f\u0442\u0438\u0435"

    invoke-static {p0, v4, v1, v2}, Lru/fokus/tetrad/Ui;->button(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v4

    .line 145
    new-instance v5, Lru/fokus/tetrad/MainActivity$6;

    invoke-direct {v5, p0}, Lru/fokus/tetrad/MainActivity$6;-><init>(Lru/fokus/tetrad/MainActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    invoke-static {}, Lru/fokus/tetrad/Ui;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 147
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lru/fokus/tetrad/MainActivity;->store:Lru/fokus/tetrad/Store;

    invoke-virtual {v5}, Lru/fokus/tetrad/Store;->minutes()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " \u043c\u0438\u043d \u00b7 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez v0, :cond_16

    const-string v0, "\u043d\u0438\u0447\u0435\u0433\u043e \u043d\u0435 \u0431\u043b\u043e\u043a\u0438\u0440\u0443\u0435\u0442\u0441\u044f"

    :goto_e
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v4, Lru/fokus/tetrad/Ui;->MUTED:I

    sget-object v5, Lru/fokus/tetrad/Ui;->BODY:Landroid/graphics/Typeface;

    invoke-static {p0, v0, v11, v4, v5}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v0

    .line 148
    const/16 v4, 0x11

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 149
    invoke-static {}, Lru/fokus/tetrad/Ui;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 150
    const-string v0, "\u041d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0438 \u0437\u0430\u043d\u044f\u0442\u0438\u044f"

    invoke-static {p0, v0, v2, v1}, Lru/fokus/tetrad/Ui;->button(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v0

    .line 151
    new-instance v4, Lru/fokus/tetrad/MainActivity$7;

    invoke-direct {v4, p0}, Lru/fokus/tetrad/MainActivity$7;-><init>(Lru/fokus/tetrad/MainActivity;)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    invoke-static {}, Lru/fokus/tetrad/Ui;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 157
    iget-object v0, p0, Lru/fokus/tetrad/MainActivity;->content:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 160
    const/16 v0, 0xa

    invoke-static {p0, v0}, Lru/fokus/tetrad/Ui;->col(Landroid/content/Context;I)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 161
    const/4 v0, 0x4

    new-array v5, v0, [[Ljava/lang/String;

    new-array v0, v10, [Ljava/lang/String;

    const-string v3, "\u0420\u0430\u0441\u043f\u0438\u0441\u0430\u043d\u0438\u0435"

    aput-object v3, v0, v1

    const-string v3, "sched"

    aput-object v3, v0, v2

    aput-object v0, v5, v1

    new-array v0, v10, [Ljava/lang/String;

    const-string v3, "\u041e\u0446\u0435\u043d\u043a\u0438"

    aput-object v3, v0, v1

    const-string v3, "marks"

    aput-object v3, v0, v2

    aput-object v0, v5, v2

    new-array v0, v10, [Ljava/lang/String;

    const-string v3, "\u0418\u0441\u0442\u043e\u0440\u0438\u044f"

    aput-object v3, v0, v1

    const-string v3, "hist"

    aput-object v3, v0, v2

    aput-object v0, v5, v10

    const/4 v0, 0x3

    new-array v3, v10, [Ljava/lang/String;

    const-string v6, "\u041f\u0440\u043e\u0432\u0435\u0440\u0438\u0442\u044c \u0440\u0435\u0448\u0435\u043d\u0438\u0435"

    aput-object v6, v3, v1

    const-string v6, "check"

    aput-object v6, v3, v2

    aput-object v3, v5, v0

    .line 162
    const/4 v0, 0x0

    move v3, v1

    .line 163
    :goto_f
    array-length v6, v5

    if-ge v3, v6, :cond_17

    .line 164
    rem-int/lit8 v6, v3, 0x2

    if-nez v6, :cond_e

    const/16 v0, 0xa

    invoke-static {p0, v0}, Lru/fokus/tetrad/Ui;->row(Landroid/content/Context;I)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-static {}, Lru/fokus/tetrad/Ui;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v4, v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 165
    :cond_e
    aget-object v6, v5, v3

    aget-object v6, v6, v2

    .line 166
    aget-object v7, v5, v3

    aget-object v7, v7, v1

    invoke-static {p0, v7, v2, v1}, Lru/fokus/tetrad/Ui;->button(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v7

    .line 167
    new-instance v8, Lru/fokus/tetrad/MainActivity$8;

    invoke-direct {v8, p0, v6}, Lru/fokus/tetrad/MainActivity$8;-><init>(Lru/fokus/tetrad/MainActivity;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    invoke-static {v12}, Lru/fokus/tetrad/Ui;->weight(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v0, v7, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 163
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 112
    :cond_f
    const-string v0, "\u0418\u0437 \u041c\u042d\u0428"

    goto/16 :goto_8

    :cond_10
    const-string v0, "\u0412\u043e\u0439\u0442\u0438 \u0432 \u041c\u042d\u0428"

    goto/16 :goto_8

    :cond_11
    move v0, v1

    .line 113
    goto/16 :goto_9

    .line 124
    :cond_12
    const-string v0, "\u0414\u043e\u0431\u0430\u0432\u044c \u0444\u043e\u0442\u043e \u0443\u0441\u043b\u043e\u0432\u0438\u044f"

    goto/16 :goto_a

    .line 126
    :cond_13
    const-string v3, "\u0412 \u041c\u042d\u0428 \u0447\u0430\u0441\u0442\u043e \u0442\u043e\u043b\u044c\u043a\u043e \u043d\u043e\u043c\u0435\u0440\u0430 \u0437\u0430\u0434\u0430\u0447. \u0421 \u0444\u043e\u0442\u043e \u0441\u0442\u0440\u0430\u043d\u0438\u0446\u044b \u0443\u0447\u0435\u0431\u043d\u0438\u043a\u0430 \u0418\u0418 \u043f\u0440\u043e\u0432\u0435\u0440\u0438\u0442 \u0442\u043e\u0447\u043d\u0435\u0435."

    goto/16 :goto_b

    .line 128
    :cond_14
    const-string v0, "\u0417\u0430\u0434\u0430\u043d\u0438\u0435 \u043f\u0440\u0438\u043a\u0440\u0435\u043f\u043b\u0435\u043d\u043e \u2713"

    const/high16 v5, 0x41700000    # 15.0f

    sget v6, Lru/fokus/tetrad/Ui;->OK:I

    sget-object v7, Lru/fokus/tetrad/Ui;->MEDIUM:Landroid/graphics/Typeface;

    invoke-static {p0, v0, v5, v6, v7}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 129
    const/16 v0, 0x78

    new-instance v5, Lru/fokus/tetrad/MainActivity$5;

    invoke-direct {v5, p0}, Lru/fokus/tetrad/MainActivity$5;-><init>(Lru/fokus/tetrad/MainActivity;)V

    invoke-static {p0, v3, v0, v5}, Lru/fokus/tetrad/Photos;->strip(Landroid/app/Activity;Ljava/util/List;ILru/fokus/tetrad/Photos$Remove;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 136
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x5

    if-ge v0, v3, :cond_c

    const-string v0, "\u0415\u0449\u0451 \u0444\u043e\u0442\u043e"

    invoke-static {p0, v0, v2, v10}, Lru/fokus/tetrad/Photos;->addMore(Landroid/app/Activity;Ljava/lang/String;II)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_c

    :cond_15
    move v0, v1

    .line 143
    goto/16 :goto_d

    .line 147
    :cond_16
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u0437\u0430\u0431\u043b\u043e\u043a\u0438\u0440\u043e\u0432\u0430\u043d\u043e "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    int-to-long v6, v0

    const-string v0, "\u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u0435"

    const-string v8, "\u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u044f"

    const-string v9, "\u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u0439"

    invoke-static {v6, v7, v0, v8, v9}, Lru/fokus/tetrad/Ui;->plural(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_e

    .line 175
    :cond_17
    iget-object v0, p0, Lru/fokus/tetrad/MainActivity;->content:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 176
    return-void
.end method

.method private startNow()V
    .locals 5

    .prologue
    .line 467
    iget-object v0, p0, Lru/fokus/tetrad/MainActivity;->store:Lru/fokus/tetrad/Store;

    const-string v1, ""

    iget-object v2, p0, Lru/fokus/tetrad/MainActivity;->store:Lru/fokus/tetrad/Store;

    invoke-virtual {v2}, Lru/fokus/tetrad/Store;->grade()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    iget-object v4, p0, Lru/fokus/tetrad/MainActivity;->store:Lru/fokus/tetrad/Store;

    invoke-virtual {v4}, Lru/fokus/tetrad/Store;->minutes()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lru/fokus/tetrad/Store;->startSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 468
    invoke-static {p0}, Lru/fokus/tetrad/Notifier;->sessionStarted(Landroid/content/Context;)V

    .line 469
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lru/fokus/tetrad/FocusActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lru/fokus/tetrad/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 470
    const-string v0, "\u0417\u0430\u043d\u044f\u0442\u0438\u0435 \u043d\u0430\u0447\u0430\u043b\u043e\u0441\u044c. \u0423\u0434\u0430\u0447\u0438!"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 471
    return-void
.end method

.method private tryStart()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 407
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_0

    const-string v0, "android.permission.POST_NOTIFICATIONS"

    invoke-virtual {p0, v0}, Lru/fokus/tetrad/MainActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/fokus/tetrad/MainActivity;->store:Lru/fokus/tetrad/Store;

    .line 408
    invoke-virtual {v0}, Lru/fokus/tetrad/Store;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "askedNotif"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 409
    iget-object v0, p0, Lru/fokus/tetrad/MainActivity;->store:Lru/fokus/tetrad/Store;

    invoke-virtual {v0}, Lru/fokus/tetrad/Store;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "askedNotif"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 410
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "android.permission.POST_NOTIFICATIONS"

    aput-object v1, v0, v2

    const/16 v1, 0x1e

    invoke-virtual {p0, v0, v1}, Lru/fokus/tetrad/MainActivity;->requestPermissions([Ljava/lang/String;I)V

    .line 436
    :goto_0
    return-void

    .line 413
    :cond_0
    iget-object v0, p0, Lru/fokus/tetrad/MainActivity;->store:Lru/fokus/tetrad/Store;

    invoke-virtual {v0}, Lru/fokus/tetrad/Store;->grade()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lru/fokus/tetrad/MainActivity;->askGrade()V

    goto :goto_0

    .line 414
    :cond_1
    iget-object v0, p0, Lru/fokus/tetrad/MainActivity;->store:Lru/fokus/tetrad/Store;

    invoke-virtual {v0}, Lru/fokus/tetrad/Store;->lessonItems()Lorg/json/JSONArray;

    move-result-object v0

    const-string v1, "external"

    invoke-static {v0, v1}, Lru/fokus/tetrad/Homework;->has(Lorg/json/JSONArray;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lru/fokus/tetrad/MainActivity;->store:Lru/fokus/tetrad/Store;

    invoke-virtual {v0}, Lru/fokus/tetrad/Store;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "skipExternalOnce"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 415
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u041d\u0435 \u0432\u0441\u0451 \u0437\u0430\u0434\u0430\u043d\u0438\u0435 \u0434\u043e\u0431\u0430\u0432\u043b\u0435\u043d\u043e"

    .line 416
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u041e\u0434\u043d\u043e \u0438\u0437 \u0437\u0430\u0434\u0430\u043d\u0438\u0439 \u043b\u0435\u0436\u0438\u0442 \u0432 \u0433\u0440\u0443\u043f\u043f\u0435 \u043a\u043b\u0430\u0441\u0441\u0430 \u0438\u043b\u0438 \u0432\u043e \u0432\u043b\u043e\u0436\u0435\u043d\u0438\u0438. \u041f\u0440\u0438\u0448\u043b\u0438 \u0435\u0433\u043e \u0444\u043e\u0442\u043e \u0438\u043b\u0438 \u0442\u0435\u043a\u0441\u0442 \u2014 \u0438\u043d\u0430\u0447\u0435 \u0418\u0418 \u043d\u0435 \u0441\u043c\u043e\u0436\u0435\u0442 \u0435\u0433\u043e \u043f\u0440\u043e\u0432\u0435\u0440\u0438\u0442\u044c."

    .line 417
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u0414\u043e\u0431\u0430\u0432\u043b\u044e"

    const/4 v2, 0x0

    .line 418
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u041d\u0430\u0447\u0430\u0442\u044c \u0442\u0430\u043a"

    new-instance v2, Lru/fokus/tetrad/MainActivity$20;

    invoke-direct {v2, p0}, Lru/fokus/tetrad/MainActivity$20;-><init>(Lru/fokus/tetrad/MainActivity;)V

    .line 419
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 422
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 425
    :cond_2
    iget-object v0, p0, Lru/fokus/tetrad/MainActivity;->store:Lru/fokus/tetrad/Store;

    invoke-virtual {v0}, Lru/fokus/tetrad/Store;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "skipExternalOnce"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 426
    iget-object v0, p0, Lru/fokus/tetrad/MainActivity;->store:Lru/fokus/tetrad/Store;

    invoke-virtual {v0}, Lru/fokus/tetrad/Store;->lessonPhotos()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lru/fokus/tetrad/MainActivity;->store:Lru/fokus/tetrad/Store;

    invoke-virtual {v0}, Lru/fokus/tetrad/Store;->lessonText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 427
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u041d\u0430\u0447\u0430\u0442\u044c \u0431\u0435\u0437 \u0444\u043e\u0442\u043e \u0437\u0430\u0434\u0430\u043d\u0438\u044f?"

    .line 428
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u0421 \u0444\u043e\u0442\u043e \u0418\u0418 \u043f\u0440\u043e\u0432\u0435\u0440\u0438\u0442 \u0440\u0435\u0448\u0435\u043d\u0438\u0435 \u0438\u043c\u0435\u043d\u043d\u043e \u043f\u043e \u0442\u0432\u043e\u0435\u043c\u0443 \u0443\u0447\u0435\u0431\u043d\u0438\u043a\u0443. \u0411\u0435\u0437 \u043d\u0435\u0433\u043e \u2014 \u0442\u043e\u043b\u044c\u043a\u043e \u0432\u044b\u0447\u0438\u0441\u043b\u0435\u043d\u0438\u044f \u0438 \u043f\u0440\u0430\u0432\u043e\u043f\u0438\u0441\u0430\u043d\u0438\u0435."

    .line 429
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u0421\u0444\u043e\u0442\u043e\u0433\u0440\u0430\u0444\u0438\u0440\u043e\u0432\u0430\u0442\u044c"

    new-instance v2, Lru/fokus/tetrad/MainActivity$22;

    invoke-direct {v2, p0}, Lru/fokus/tetrad/MainActivity$22;-><init>(Lru/fokus/tetrad/MainActivity;)V

    .line 430
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u041d\u0430\u0447\u0430\u0442\u044c \u0431\u0435\u0437 \u0444\u043e\u0442\u043e"

    new-instance v2, Lru/fokus/tetrad/MainActivity$21;

    invoke-direct {v2, p0}, Lru/fokus/tetrad/MainActivity$21;-><init>(Lru/fokus/tetrad/MainActivity;)V

    .line 431
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 432
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 435
    :cond_3
    invoke-direct {p0}, Lru/fokus/tetrad/MainActivity;->checkBlocker()V

    goto/16 :goto_0
.end method

.method private typeTask(I)V
    .locals 5

    .prologue
    const/high16 v3, 0x41b00000    # 22.0f

    .line 255
    const/16 v0, 0x8

    invoke-static {p0, v0}, Lru/fokus/tetrad/Ui;->col(Landroid/content/Context;I)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 256
    invoke-static {v3}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v0

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v2}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v2

    invoke-static {v3}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 257
    new-instance v2, Landroid/widget/EditText;

    invoke-direct {v2, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 258
    const-string v0, "\u041f\u0440\u0435\u0434\u043c\u0435\u0442 (\u043d\u0430\u043f\u0440\u0438\u043c\u0435\u0440, \u0418\u0441\u0442\u043e\u0440\u0438\u044f)"

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 259
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 260
    new-instance v3, Landroid/widget/EditText;

    invoke-direct {v3, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 261
    const-string v0, "\u0422\u0435\u043a\u0441\u0442 \u0437\u0430\u0434\u0430\u043d\u0438\u044f"

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 262
    const/4 v0, 0x3

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setMinLines(I)V

    .line 263
    const v0, 0x800033

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setGravity(I)V

    .line 264
    if-ltz p1, :cond_0

    .line 265
    iget-object v0, p0, Lru/fokus/tetrad/MainActivity;->store:Lru/fokus/tetrad/Store;

    invoke-virtual {v0}, Lru/fokus/tetrad/Store;->lessonItems()Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 266
    if-eqz v0, :cond_0

    const-string v4, "subject"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 268
    :cond_0
    invoke-static {}, Lru/fokus/tetrad/Ui;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 269
    invoke-static {}, Lru/fokus/tetrad/Ui;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 270
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    if-ltz p1, :cond_1

    const-string v0, "\u0422\u0435\u043a\u0441\u0442 \u0437\u0430\u0434\u0430\u043d\u0438\u044f"

    :goto_0
    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 271
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u0413\u043e\u0442\u043e\u0432\u043e"

    new-instance v4, Lru/fokus/tetrad/MainActivity$16;

    invoke-direct {v4, p0, v3, v2, p1}, Lru/fokus/tetrad/MainActivity$16;-><init>(Lru/fokus/tetrad/MainActivity;Landroid/widget/EditText;Landroid/widget/EditText;I)V

    .line 272
    invoke-virtual {v0, v1, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u041e\u0442\u043c\u0435\u043d\u0430"

    const/4 v2, 0x0

    .line 284
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 285
    return-void

    .line 270
    :cond_1
    const-string v0, "\u0412\u0432\u0435\u0441\u0442\u0438 \u0437\u0430\u0434\u0430\u043d\u0438\u0435"

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, -0x1

    .line 372
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 373
    const/16 v0, 0x28

    if-ne p1, v0, :cond_1

    if-ne p2, v2, :cond_0

    invoke-direct {p0}, Lru/fokus/tetrad/MainActivity;->fetchMesh()V

    .line 402
    :cond_0
    :goto_0
    return-void

    .line 374
    :cond_1
    const/16 v0, 0x2a

    if-ne p1, v0, :cond_2

    .line 375
    sget-object v0, Lru/fokus/tetrad/HomeworkPickerActivity;->result:Ljava/util/List;

    .line 376
    sput-object v3, Lru/fokus/tetrad/HomeworkPickerActivity;->result:Ljava/util/List;

    .line 377
    sput-object v3, Lru/fokus/tetrad/HomeworkPickerActivity;->input:Ljava/util/List;

    .line 378
    if-ne p2, v2, :cond_0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lru/fokus/tetrad/MainActivity;->addPicked(Ljava/util/List;)V

    goto :goto_0

    .line 381
    :cond_2
    const/16 v0, 0x29

    if-ne p1, v0, :cond_3

    .line 382
    if-ne p2, v2, :cond_0

    sget-object v0, Lru/fokus/tetrad/MeshActivity;->pageResult:Ljava/util/List;

    if-eqz v0, :cond_0

    sget-object v0, Lru/fokus/tetrad/MeshActivity;->pageResult:Ljava/util/List;

    sput-object v3, Lru/fokus/tetrad/MeshActivity;->pageResult:Ljava/util/List;

    invoke-direct {p0, v0}, Lru/fokus/tetrad/MainActivity;->pickHomework(Ljava/util/List;)V

    goto :goto_0

    .line 385
    :cond_3
    if-eq p1, v1, :cond_4

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 386
    :cond_4
    iget-object v0, p0, Lru/fokus/tetrad/MainActivity;->store:Lru/fokus/tetrad/Store;

    invoke-virtual {v0}, Lru/fokus/tetrad/Store;->lessonPhotos()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    rsub-int/lit8 v4, v0, 0x5

    .line 387
    const-string v0, ""

    iput-object v0, p0, Lru/fokus/tetrad/MainActivity;->status:Ljava/lang/String;

    .line 388
    if-ne p1, v1, :cond_5

    :goto_1
    new-instance v5, Lru/fokus/tetrad/MainActivity$19;

    invoke-direct {v5, p0}, Lru/fokus/tetrad/MainActivity$19;-><init>(Lru/fokus/tetrad/MainActivity;)V

    move-object v0, p0

    move v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lru/fokus/tetrad/Photos;->handle(Landroid/app/Activity;ZILandroid/content/Intent;ILru/fokus/tetrad/Photos$Done;)V

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/high16 v4, 0x41900000    # 18.0f

    .line 35
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lru/fokus/tetrad/Ui;->applyTheme(Landroid/app/Activity;Z)V

    .line 36
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    sget v0, Lru/fokus/tetrad/Ui;->BG:I

    sget-boolean v1, Lru/fokus/tetrad/Ui;->night:Z

    invoke-static {p0, v0, v1}, Lru/fokus/tetrad/Ui;->paintBars(Landroid/app/Activity;IZ)V

    .line 38
    new-instance v0, Lru/fokus/tetrad/Store;

    invoke-direct {v0, p0}, Lru/fokus/tetrad/Store;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lru/fokus/tetrad/MainActivity;->store:Lru/fokus/tetrad/Store;

    .line 39
    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 40
    sget v1, Lru/fokus/tetrad/Ui;->BG:I

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setBackgroundColor(I)V

    .line 41
    const/16 v1, 0x10

    invoke-static {p0, v1}, Lru/fokus/tetrad/Ui;->col(Landroid/content/Context;I)Landroid/widget/LinearLayout;

    move-result-object v1

    iput-object v1, p0, Lru/fokus/tetrad/MainActivity;->content:Landroid/widget/LinearLayout;

    .line 42
    iget-object v1, p0, Lru/fokus/tetrad/MainActivity;->content:Landroid/widget/LinearLayout;

    invoke-static {v4}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v2

    invoke-static {v4}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v3

    invoke-static {v4}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v4

    const/high16 v5, 0x42000000    # 32.0f

    invoke-static {v5}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 43
    iget-object v1, p0, Lru/fokus/tetrad/MainActivity;->content:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 44
    invoke-virtual {p0, v0}, Lru/fokus/tetrad/MainActivity;->setContentView(Landroid/view/View;)V

    .line 45
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .prologue
    .line 462
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 463
    const/16 v0, 0x1e

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lru/fokus/tetrad/MainActivity;->tryStart()V

    .line 464
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 48
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 49
    iget-object v0, p0, Lru/fokus/tetrad/MainActivity;->store:Lru/fokus/tetrad/Store;

    invoke-virtual {v0}, Lru/fokus/tetrad/Store;->active()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lru/fokus/tetrad/FocusActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lru/fokus/tetrad/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 56
    :goto_0
    return-void

    .line 50
    :cond_0
    iget-object v0, p0, Lru/fokus/tetrad/MainActivity;->store:Lru/fokus/tetrad/Store;

    invoke-virtual {v0}, Lru/fokus/tetrad/Store;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "guideDone"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 51
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lru/fokus/tetrad/GuideActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lru/fokus/tetrad/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 54
    :cond_1
    invoke-static {p0}, Lru/fokus/tetrad/LessonReminders;->schedule(Landroid/content/Context;)V

    .line 55
    invoke-direct {p0}, Lru/fokus/tetrad/MainActivity;->render()V

    goto :goto_0
.end method
