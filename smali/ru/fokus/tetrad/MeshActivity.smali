.class public Lru/fokus/tetrad/MeshActivity;
.super Landroid/app/Activity;
.source "MeshActivity.java"


# static fields
.field public static final EXTRA_MODE:Ljava/lang/String; = "mode"

.field public static final MODE_LOGIN:Ljava/lang/String; = "login"

.field public static final MODE_PAGE:Ljava/lang/String; = "page"

.field static pageResult:Ljava/util/List;
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
.field private finishing:Z

.field private hint:Landroid/widget/TextView;

.field private mode:Ljava/lang/String;

.field private progress:Landroid/widget/ProgressBar;

.field private takeBtn:Landroid/widget/TextView;

.field private web:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lru/fokus/tetrad/MeshActivity;->finishing:Z

    return-void
.end method

.method static synthetic access$000(Lru/fokus/tetrad/MeshActivity;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lru/fokus/tetrad/MeshActivity;->progress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$100(Lru/fokus/tetrad/MeshActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lru/fokus/tetrad/MeshActivity;->checkLogin(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lru/fokus/tetrad/MeshActivity;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lru/fokus/tetrad/MeshActivity;->takeFromPage()V

    return-void
.end method

.method static synthetic access$300(Lru/fokus/tetrad/MeshActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lru/fokus/tetrad/MeshActivity;->fail(Ljava/lang/String;)V

    return-void
.end method

.method private checkLogin(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 132
    const-string v0, "login"

    iget-object v1, p0, Lru/fokus/tetrad/MeshActivity;->mode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lru/fokus/tetrad/MeshActivity;->finishing:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 133
    :cond_1
    const-string v0, "https://school.mos.ru"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    invoke-static {}, Lru/fokus/tetrad/Mesh;->token()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 135
    iput-boolean v2, p0, Lru/fokus/tetrad/MeshActivity;->finishing:Z

    .line 136
    iget-object v0, p0, Lru/fokus/tetrad/MeshActivity;->hint:Landroid/widget/TextView;

    const-string v1, "\u0412\u0445\u043e\u0434 \u0432\u044b\u043f\u043e\u043b\u043d\u0435\u043d, \u0432\u043e\u0437\u0432\u0440\u0430\u0449\u0430\u044e \u0432 \u0442\u0435\u0442\u0440\u0430\u0434\u044c\u2026"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    new-instance v0, Lru/fokus/tetrad/Store;

    invoke-direct {v0, p0}, Lru/fokus/tetrad/Store;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lru/fokus/tetrad/Store;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "meshLogged"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 138
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lru/fokus/tetrad/MeshActivity$5;

    invoke-direct {v1, p0}, Lru/fokus/tetrad/MeshActivity$5;-><init>(Lru/fokus/tetrad/MeshActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 145
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private fail(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 179
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 180
    iget-object v0, p0, Lru/fokus/tetrad/MeshActivity;->takeBtn:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lru/fokus/tetrad/Ui;->setEnabled(Landroid/view/View;Z)V

    .line 181
    iget-object v0, p0, Lru/fokus/tetrad/MeshActivity;->takeBtn:Landroid/widget/TextView;

    const-string v1, "\u0412\u0437\u044f\u0442\u044c \u0437\u0430\u0434\u0430\u043d\u0438\u0435 \u0441 \u044d\u0442\u043e\u0439 \u0441\u0442\u0440\u0430\u043d\u0438\u0446\u044b"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    return-void
.end method

.method private takeFromPage()V
    .locals 3

    .prologue
    .line 149
    new-instance v0, Lru/fokus/tetrad/Store;

    invoke-direct {v0, p0}, Lru/fokus/tetrad/Store;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lru/fokus/tetrad/Store;->aiReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 150
    const-string v0, "\u0414\u043b\u044f \u0440\u0430\u0437\u0431\u043e\u0440\u0430 \u0441\u0442\u0440\u0430\u043d\u0438\u0446\u044b \u043d\u0443\u0436\u0435\u043d \u043f\u043e\u0434\u043a\u043b\u044e\u0447\u0451\u043d\u043d\u044b\u0439 \u0418\u0418 (\u041d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0438 \u2192 \u0418\u0418-\u043f\u0440\u043e\u0432\u0435\u0440\u043a\u0430)"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 176
    :goto_0
    return-void

    .line 153
    :cond_0
    iget-object v0, p0, Lru/fokus/tetrad/MeshActivity;->takeBtn:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lru/fokus/tetrad/Ui;->setEnabled(Landroid/view/View;Z)V

    .line 154
    iget-object v0, p0, Lru/fokus/tetrad/MeshActivity;->takeBtn:Landroid/widget/TextView;

    const-string v1, "\u0418\u0449\u0443 \u0437\u0430\u0434\u0430\u043d\u0438\u044f \u043d\u0430 \u0441\u0442\u0440\u0430\u043d\u0438\u0446\u0435\u2026"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    iget-object v0, p0, Lru/fokus/tetrad/MeshActivity;->web:Landroid/webkit/WebView;

    const-string v1, "(function(){return document.body ? document.body.innerText : \'\';})()"

    new-instance v2, Lru/fokus/tetrad/MeshActivity$6;

    invoke-direct {v2, p0}, Lru/fokus/tetrad/MeshActivity$6;-><init>(Lru/fokus/tetrad/MeshActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lru/fokus/tetrad/MeshActivity;->web:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/fokus/tetrad/MeshActivity;->web:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/fokus/tetrad/MeshActivity;->web:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 186
    :goto_0
    return-void

    .line 185
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    const/high16 v11, 0x41200000    # 10.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v9, 0x41600000    # 14.0f

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 49
    invoke-static {p0, v7}, Lru/fokus/tetrad/Ui;->applyTheme(Landroid/app/Activity;Z)V

    .line 50
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    sget v0, Lru/fokus/tetrad/Ui;->BG:I

    sget-boolean v1, Lru/fokus/tetrad/Ui;->night:Z

    invoke-static {p0, v0, v1}, Lru/fokus/tetrad/Ui;->paintBars(Landroid/app/Activity;IZ)V

    .line 52
    invoke-virtual {p0}, Lru/fokus/tetrad/MeshActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "mode"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/fokus/tetrad/MeshActivity;->mode:Ljava/lang/String;

    .line 53
    iget-object v0, p0, Lru/fokus/tetrad/MeshActivity;->mode:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "login"

    iput-object v0, p0, Lru/fokus/tetrad/MeshActivity;->mode:Ljava/lang/String;

    .line 55
    :cond_0
    invoke-static {p0, v7}, Lru/fokus/tetrad/Ui;->col(Landroid/content/Context;I)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 56
    sget v0, Lru/fokus/tetrad/Ui;->BG:I

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 58
    const/16 v0, 0xc

    invoke-static {p0, v0}, Lru/fokus/tetrad/Ui;->row(Landroid/content/Context;I)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 59
    invoke-static {v9}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v0

    invoke-static {v11}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v3

    invoke-static {v9}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v4

    const/high16 v5, 0x41000000    # 8.0f

    invoke-static {v5}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v5

    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 60
    const-string v0, "\u2190"

    const-string v3, "\u041d\u0430\u0437\u0430\u0434"

    invoke-static {p0, v0, v3}, Lru/fokus/tetrad/Ui;->iconButton(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    .line 61
    new-instance v3, Lru/fokus/tetrad/MeshActivity$1;

    invoke-direct {v3, p0}, Lru/fokus/tetrad/MeshActivity$1;-><init>(Lru/fokus/tetrad/MeshActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x42300000    # 44.0f

    invoke-static {v4}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v4

    const/high16 v5, 0x42300000    # 44.0f

    invoke-static {v5}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 63
    invoke-static {p0, v7}, Lru/fokus/tetrad/Ui;->col(Landroid/content/Context;I)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 64
    const-string v0, "login"

    iget-object v4, p0, Lru/fokus/tetrad/MeshActivity;->mode:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "\u0412\u0445\u043e\u0434 \u0432 \u041c\u042d\u0428"

    :goto_0
    const/high16 v4, 0x41900000    # 18.0f

    sget v5, Lru/fokus/tetrad/Ui;->FG:I

    sget-object v6, Lru/fokus/tetrad/Ui;->BOLD:Landroid/graphics/Typeface;

    invoke-static {p0, v0, v4, v5, v6}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 65
    const-string v0, "login"

    iget-object v4, p0, Lru/fokus/tetrad/MeshActivity;->mode:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 66
    const-string v0, "\u041b\u043e\u0433\u0438\u043d \u0438 \u043f\u0430\u0440\u043e\u043b\u044c \u0432\u0432\u043e\u0434\u044f\u0442\u0441\u044f \u043d\u0430 \u0441\u0430\u0439\u0442\u0435 mos.ru \u2014 \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u0435 \u0438\u0445 \u043d\u0435 \u0432\u0438\u0434\u0438\u0442"

    .line 67
    :goto_1
    const/high16 v4, 0x41400000    # 12.0f

    sget v5, Lru/fokus/tetrad/Ui;->MUTED:I

    sget-object v6, Lru/fokus/tetrad/Ui;->BODY:Landroid/graphics/Typeface;

    .line 65
    invoke-static {p0, v0, v4, v5, v6}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lru/fokus/tetrad/MeshActivity;->hint:Landroid/widget/TextView;

    .line 68
    iget-object v0, p0, Lru/fokus/tetrad/MeshActivity;->hint:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 69
    invoke-static {v10}, Lru/fokus/tetrad/Ui;->weight(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 72
    new-instance v0, Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    const v3, 0x1010078

    invoke-direct {v0, p0, v2, v3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lru/fokus/tetrad/MeshActivity;->progress:Landroid/widget/ProgressBar;

    .line 73
    iget-object v0, p0, Lru/fokus/tetrad/MeshActivity;->progress:Landroid/widget/ProgressBar;

    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 74
    iget-object v0, p0, Lru/fokus/tetrad/MeshActivity;->progress:Landroid/widget/ProgressBar;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/high16 v4, 0x40400000    # 3.0f

    invoke-static {v4}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lru/fokus/tetrad/MeshActivity;->web:Landroid/webkit/WebView;

    .line 77
    iget-object v0, p0, Lru/fokus/tetrad/MeshActivity;->web:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 78
    invoke-virtual {v0, v8}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 79
    invoke-virtual {v0, v8}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 80
    invoke-virtual {v0, v8}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 81
    invoke-virtual {v0, v8}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 82
    invoke-virtual {v0, v8}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 83
    invoke-virtual {v0, v7}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 84
    invoke-virtual {v0, v7}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 85
    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "; wv"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 86
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 87
    invoke-virtual {v0, v8}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 88
    iget-object v2, p0, Lru/fokus/tetrad/MeshActivity;->web:Landroid/webkit/WebView;

    invoke-virtual {v0, v2, v8}, Landroid/webkit/CookieManager;->setAcceptThirdPartyCookies(Landroid/webkit/WebView;Z)V

    .line 89
    iget-object v0, p0, Lru/fokus/tetrad/MeshActivity;->web:Landroid/webkit/WebView;

    new-instance v2, Lru/fokus/tetrad/MeshActivity$2;

    invoke-direct {v2, p0}, Lru/fokus/tetrad/MeshActivity$2;-><init>(Lru/fokus/tetrad/MeshActivity;)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 95
    iget-object v0, p0, Lru/fokus/tetrad/MeshActivity;->web:Landroid/webkit/WebView;

    new-instance v2, Lru/fokus/tetrad/MeshActivity$3;

    invoke-direct {v2, p0}, Lru/fokus/tetrad/MeshActivity$3;-><init>(Lru/fokus/tetrad/MeshActivity;)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 115
    iget-object v0, p0, Lru/fokus/tetrad/MeshActivity;->web:Landroid/webkit/WebView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v7, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 117
    const-string v0, "page"

    iget-object v2, p0, Lru/fokus/tetrad/MeshActivity;->mode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 118
    invoke-static {p0, v7}, Lru/fokus/tetrad/Ui;->col(Landroid/content/Context;I)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 119
    invoke-static {v9}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v2

    invoke-static {v11}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v3

    invoke-static {v9}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v4

    const/high16 v5, 0x41400000    # 12.0f

    invoke-static {v5}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 120
    sget v2, Lru/fokus/tetrad/Ui;->CARD:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 121
    const-string v2, "\u0412\u0437\u044f\u0442\u044c \u0437\u0430\u0434\u0430\u043d\u0438\u0435 \u0441 \u044d\u0442\u043e\u0439 \u0441\u0442\u0440\u0430\u043d\u0438\u0446\u044b"

    invoke-static {p0, v2, v7, v8}, Lru/fokus/tetrad/Ui;->button(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Lru/fokus/tetrad/MeshActivity;->takeBtn:Landroid/widget/TextView;

    .line 122
    iget-object v2, p0, Lru/fokus/tetrad/MeshActivity;->takeBtn:Landroid/widget/TextView;

    new-instance v3, Lru/fokus/tetrad/MeshActivity$4;

    invoke-direct {v3, p0}, Lru/fokus/tetrad/MeshActivity$4;-><init>(Lru/fokus/tetrad/MeshActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    iget-object v2, p0, Lru/fokus/tetrad/MeshActivity;->takeBtn:Landroid/widget/TextView;

    invoke-static {}, Lru/fokus/tetrad/Ui;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 124
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 126
    :cond_1
    invoke-virtual {p0, v1}, Lru/fokus/tetrad/MeshActivity;->setContentView(Landroid/view/View;)V

    .line 127
    iget-object v0, p0, Lru/fokus/tetrad/MeshActivity;->web:Landroid/webkit/WebView;

    const-string v1, "https://school.mos.ru/"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 128
    return-void

    .line 64
    :cond_2
    const-string v0, "\u0414\u043d\u0435\u0432\u043d\u0438\u043a \u041c\u042d\u0428"

    goto/16 :goto_0

    .line 67
    :cond_3
    const-string v0, "\u041e\u0442\u043a\u0440\u043e\u0439 \u0434\u043e\u043c\u0430\u0448\u043d\u0438\u0435 \u0437\u0430\u0434\u0430\u043d\u0438\u044f \u0438 \u043d\u0430\u0436\u043c\u0438 \u043a\u043d\u043e\u043f\u043a\u0443 \u0432\u043d\u0438\u0437\u0443"

    goto/16 :goto_1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lru/fokus/tetrad/MeshActivity;->web:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/fokus/tetrad/MeshActivity;->web:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    iget-object v0, p0, Lru/fokus/tetrad/MeshActivity;->web:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 190
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 191
    return-void
.end method
