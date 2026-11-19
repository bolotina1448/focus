.class public Lru/fokus/tetrad/AppPickerActivity;
.super Landroid/app/Activity;
.source "AppPickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/fokus/tetrad/AppPickerActivity$Adapter;,
        Lru/fokus/tetrad/AppPickerActivity$App;
    }
.end annotation


# instance fields
.field private adapter:Lru/fokus/tetrad/AppPickerActivity$Adapter;

.field private final all:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lru/fokus/tetrad/AppPickerActivity$App;",
            ">;"
        }
    .end annotation
.end field

.field private countTv:Landroid/widget/TextView;

.field private query:Ljava/lang/String;

.field private selected:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final shown:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lru/fokus/tetrad/AppPickerActivity$App;",
            ">;"
        }
    .end annotation
.end field

.field private store:Lru/fokus/tetrad/Store;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lru/fokus/tetrad/AppPickerActivity;->all:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lru/fokus/tetrad/AppPickerActivity;->shown:Ljava/util/List;

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lru/fokus/tetrad/AppPickerActivity;->query:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$002(Lru/fokus/tetrad/AppPickerActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lru/fokus/tetrad/AppPickerActivity;->query:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lru/fokus/tetrad/AppPickerActivity;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lru/fokus/tetrad/AppPickerActivity;->filter()V

    return-void
.end method

.method static synthetic access$200(Lru/fokus/tetrad/AppPickerActivity;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lru/fokus/tetrad/AppPickerActivity;->load()V

    return-void
.end method

.method static synthetic access$300(Lru/fokus/tetrad/AppPickerActivity;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lru/fokus/tetrad/AppPickerActivity;->selected:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$400(Lru/fokus/tetrad/AppPickerActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lru/fokus/tetrad/AppPickerActivity;->all:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lru/fokus/tetrad/AppPickerActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lru/fokus/tetrad/AppPickerActivity;->shown:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$600(Lru/fokus/tetrad/AppPickerActivity;)Lru/fokus/tetrad/Store;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lru/fokus/tetrad/AppPickerActivity;->store:Lru/fokus/tetrad/Store;

    return-object v0
.end method

.method static synthetic access$700(Lru/fokus/tetrad/AppPickerActivity;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lru/fokus/tetrad/AppPickerActivity;->updateCount()V

    return-void
.end method

.method private filter()V
    .locals 4

    .prologue
    .line 128
    iget-object v0, p0, Lru/fokus/tetrad/AppPickerActivity;->shown:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 129
    iget-object v0, p0, Lru/fokus/tetrad/AppPickerActivity;->all:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/fokus/tetrad/AppPickerActivity$App;

    iget-object v2, p0, Lru/fokus/tetrad/AppPickerActivity;->query:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v0, Lru/fokus/tetrad/AppPickerActivity$App;->label:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lru/fokus/tetrad/AppPickerActivity;->query:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    iget-object v2, p0, Lru/fokus/tetrad/AppPickerActivity;->shown:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 130
    :cond_2
    iget-object v0, p0, Lru/fokus/tetrad/AppPickerActivity;->adapter:Lru/fokus/tetrad/AppPickerActivity$Adapter;

    invoke-virtual {v0}, Lru/fokus/tetrad/AppPickerActivity$Adapter;->notifyDataSetChanged()V

    .line 131
    invoke-direct {p0}, Lru/fokus/tetrad/AppPickerActivity;->updateCount()V

    .line 132
    return-void
.end method

.method private load()V
    .locals 9

    .prologue
    .line 96
    invoke-virtual {p0}, Lru/fokus/tetrad/AppPickerActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 97
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 98
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 99
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 100
    new-instance v3, Ljava/util/HashSet;

    sget-object v4, Lru/fokus/tetrad/Store;->DEFAULT_BLOCKED:[Ljava/lang/String;

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 101
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 102
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 103
    iget-object v6, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 104
    invoke-virtual {p0}, Lru/fokus/tetrad/AppPickerActivity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-interface {v2, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 105
    new-instance v7, Lru/fokus/tetrad/AppPickerActivity$App;

    invoke-direct {v7}, Lru/fokus/tetrad/AppPickerActivity$App;-><init>()V

    .line 106
    iput-object v6, v7, Lru/fokus/tetrad/AppPickerActivity$App;->pkg:Ljava/lang/String;

    .line 107
    invoke-virtual {v0, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lru/fokus/tetrad/AppPickerActivity$App;->label:Ljava/lang/String;

    .line 108
    :try_start_0
    invoke-virtual {v0, v1}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v7, Lru/fokus/tetrad/AppPickerActivity$App;->icon:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :goto_1
    invoke-interface {v3, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, v7, Lru/fokus/tetrad/AppPickerActivity$App;->known:Z

    .line 110
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 112
    :cond_1
    new-instance v0, Lru/fokus/tetrad/AppPickerActivity$4;

    invoke-direct {v0, p0}, Lru/fokus/tetrad/AppPickerActivity$4;-><init>(Lru/fokus/tetrad/AppPickerActivity;)V

    invoke-static {v4, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 120
    new-instance v0, Lru/fokus/tetrad/AppPickerActivity$5;

    invoke-direct {v0, p0, v4}, Lru/fokus/tetrad/AppPickerActivity$5;-><init>(Lru/fokus/tetrad/AppPickerActivity;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lru/fokus/tetrad/AppPickerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 125
    return-void

    .line 108
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private updateCount()V
    .locals 7

    .prologue
    .line 135
    iget-object v0, p0, Lru/fokus/tetrad/AppPickerActivity;->selected:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    .line 136
    iget-object v1, p0, Lru/fokus/tetrad/AppPickerActivity;->countTv:Landroid/widget/TextView;

    if-nez v0, :cond_0

    const-string v0, "\u041d\u0438\u0447\u0435\u0433\u043e \u043d\u0435 \u0432\u044b\u0431\u0440\u0430\u043d\u043e"

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    return-void

    .line 136
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u0412\u044b\u0431\u0440\u0430\u043d\u043e: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    int-to-long v4, v0

    const-string v0, "\u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u0435"

    const-string v3, "\u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u044f"

    const-string v6, "\u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u0439"

    invoke-static {v4, v5, v0, v3, v6}, Lru/fokus/tetrad/Ui;->plural(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    .prologue
    const/16 v4, 0xc

    const/high16 v3, 0x41800000    # 16.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    .line 44
    invoke-static {p0, v7}, Lru/fokus/tetrad/Ui;->applyTheme(Landroid/app/Activity;Z)V

    .line 45
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    sget v0, Lru/fokus/tetrad/Ui;->BG:I

    sget-boolean v1, Lru/fokus/tetrad/Ui;->night:Z

    invoke-static {p0, v0, v1}, Lru/fokus/tetrad/Ui;->paintBars(Landroid/app/Activity;IZ)V

    .line 47
    new-instance v0, Lru/fokus/tetrad/Store;

    invoke-direct {v0, p0}, Lru/fokus/tetrad/Store;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lru/fokus/tetrad/AppPickerActivity;->store:Lru/fokus/tetrad/Store;

    .line 48
    iget-object v0, p0, Lru/fokus/tetrad/AppPickerActivity;->store:Lru/fokus/tetrad/Store;

    invoke-virtual {v0}, Lru/fokus/tetrad/Store;->blocked()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lru/fokus/tetrad/AppPickerActivity;->selected:Ljava/util/Set;

    .line 50
    invoke-static {p0, v4}, Lru/fokus/tetrad/Ui;->col(Landroid/content/Context;I)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 51
    sget v1, Lru/fokus/tetrad/Ui;->BG:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 52
    invoke-static {v3}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v1

    const/high16 v2, 0x41900000    # 18.0f

    invoke-static {v2}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v2

    invoke-static {v3}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 54
    invoke-static {p0, v4}, Lru/fokus/tetrad/Ui;->row(Landroid/content/Context;I)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 55
    const/4 v2, 0x2

    invoke-static {p0, v2}, Lru/fokus/tetrad/Ui;->col(Landroid/content/Context;I)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 56
    const-string v3, "\u0427\u0442\u043e \u0431\u043b\u043e\u043a\u0438\u0440\u043e\u0432\u0430\u0442\u044c"

    invoke-static {p0, v3}, Lru/fokus/tetrad/Ui;->title(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 57
    const-string v3, ""

    const/high16 v4, 0x41600000    # 14.0f

    sget v5, Lru/fokus/tetrad/Ui;->MUTED:I

    sget-object v6, Lru/fokus/tetrad/Ui;->BODY:Landroid/graphics/Typeface;

    invoke-static {p0, v3, v4, v5, v6}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v3

    iput-object v3, p0, Lru/fokus/tetrad/AppPickerActivity;->countTv:Landroid/widget/TextView;

    .line 58
    iget-object v3, p0, Lru/fokus/tetrad/AppPickerActivity;->countTv:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 59
    invoke-static {v8}, Lru/fokus/tetrad/Ui;->weight(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 60
    const-string v2, "\u0413\u043e\u0442\u043e\u0432\u043e"

    invoke-static {p0, v2, v7, v7}, Lru/fokus/tetrad/Ui;->button(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v2

    .line 61
    new-instance v3, Lru/fokus/tetrad/AppPickerActivity$1;

    invoke-direct {v3, p0}, Lru/fokus/tetrad/AppPickerActivity$1;-><init>(Lru/fokus/tetrad/AppPickerActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 63
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 65
    const-string v1, "\u041f\u043e\u0438\u0441\u043a \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u044f"

    invoke-static {p0, v1, v7}, Lru/fokus/tetrad/Ui;->edit(Landroid/content/Context;Ljava/lang/String;Z)Landroid/widget/EditText;

    move-result-object v1

    .line 66
    new-instance v2, Lru/fokus/tetrad/AppPickerActivity$2;

    invoke-direct {v2, p0}, Lru/fokus/tetrad/AppPickerActivity$2;-><init>(Lru/fokus/tetrad/AppPickerActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 71
    invoke-static {}, Lru/fokus/tetrad/Ui;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    const-string v1, "\u041e\u0442\u043c\u0435\u0447\u0435\u043d\u043d\u044b\u0435 \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u044f \u0431\u0443\u0434\u0443\u0442 \u0437\u0430\u043a\u0440\u044b\u0432\u0430\u0442\u044c\u0441\u044f \u0432\u043e \u0432\u0440\u0435\u043c\u044f \u0443\u0440\u043e\u043a\u0430. \u0417\u0432\u043e\u043d\u043a\u0438, \u043a\u0430\u043c\u0435\u0440\u0430, \u043a\u0430\u043b\u044c\u043a\u0443\u043b\u044f\u0442\u043e\u0440 \u0438 \u0441\u0430\u043c\u0430 \u00ab\u0424\u043e\u043a\u0443\u0441-\u0442\u0435\u0442\u0440\u0430\u0434\u044c\u00bb \u043e\u0441\u0442\u0430\u044e\u0442\u0441\u044f \u0434\u043e\u0441\u0442\u0443\u043f\u043d\u044b, \u0435\u0441\u043b\u0438 \u0438\u0445 \u043d\u0435 \u043e\u0442\u043c\u0435\u0447\u0430\u0442\u044c."

    const/high16 v2, 0x41500000    # 13.0f

    sget v3, Lru/fokus/tetrad/Ui;->MUTED:I

    sget-object v4, Lru/fokus/tetrad/Ui;->BODY:Landroid/graphics/Typeface;

    invoke-static {p0, v1, v2, v3, v4}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v1

    .line 74
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 76
    new-instance v1, Landroid/widget/ListView;

    invoke-direct {v1, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 77
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 78
    invoke-virtual {v1, v7}, Landroid/widget/ListView;->setClipToPadding(Z)V

    .line 79
    const/high16 v2, 0x41c00000    # 24.0f

    invoke-static {v2}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v2

    invoke-virtual {v1, v7, v7, v7, v2}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 80
    new-instance v2, Lru/fokus/tetrad/AppPickerActivity$Adapter;

    invoke-direct {v2, p0}, Lru/fokus/tetrad/AppPickerActivity$Adapter;-><init>(Lru/fokus/tetrad/AppPickerActivity;)V

    iput-object v2, p0, Lru/fokus/tetrad/AppPickerActivity;->adapter:Lru/fokus/tetrad/AppPickerActivity$Adapter;

    .line 81
    iget-object v2, p0, Lru/fokus/tetrad/AppPickerActivity;->adapter:Lru/fokus/tetrad/AppPickerActivity$Adapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 82
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    invoke-virtual {p0, v0}, Lru/fokus/tetrad/AppPickerActivity;->setContentView(Landroid/view/View;)V

    .line 84
    invoke-direct {p0}, Lru/fokus/tetrad/AppPickerActivity;->updateCount()V

    .line 85
    iget-object v0, p0, Lru/fokus/tetrad/AppPickerActivity;->countTv:Landroid/widget/TextView;

    const-string v1, "\u0417\u0430\u0433\u0440\u0443\u0436\u0430\u044e \u0441\u043f\u0438\u0441\u043e\u043a \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u0439\u2026"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lru/fokus/tetrad/AppPickerActivity$3;

    invoke-direct {v1, p0}, Lru/fokus/tetrad/AppPickerActivity$3;-><init>(Lru/fokus/tetrad/AppPickerActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 88
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 91
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 92
    iget-object v0, p0, Lru/fokus/tetrad/AppPickerActivity;->store:Lru/fokus/tetrad/Store;

    iget-object v1, p0, Lru/fokus/tetrad/AppPickerActivity;->selected:Ljava/util/Set;

    invoke-virtual {v0, v1}, Lru/fokus/tetrad/Store;->setBlocked(Ljava/util/Set;)V

    .line 93
    return-void
.end method
