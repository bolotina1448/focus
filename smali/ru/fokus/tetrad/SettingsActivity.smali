.class public Lru/fokus/tetrad/SettingsActivity;
.super Landroid/app/Activity;
.source "SettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/fokus/tetrad/SettingsActivity$Save;,
        Lru/fokus/tetrad/SettingsActivity$Watch;
    }
.end annotation


# instance fields
.field private content:Landroid/widget/LinearLayout;

.field private store:Lru/fokus/tetrad/Store;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lru/fokus/tetrad/SettingsActivity;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lru/fokus/tetrad/SettingsActivity;->render()V

    return-void
.end method

.method static synthetic access$100(Lru/fokus/tetrad/SettingsActivity;)Lru/fokus/tetrad/Store;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lru/fokus/tetrad/SettingsActivity;->store:Lru/fokus/tetrad/Store;

    return-object v0
.end method

.method private aiCard()Landroid/view/View;
    .locals 13

    .prologue
    const/16 v12, 0x8

    const/16 v10, 0x11

    const/high16 v11, 0x41600000    # 14.0f

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 198
    iget-object v0, p0, Lru/fokus/tetrad/SettingsActivity;->store:Lru/fokus/tetrad/Store;

    invoke-virtual {v0}, Lru/fokus/tetrad/Store;->provider()Ljava/lang/String;

    move-result-object v0

    .line 199
    const-string v3, "zai"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 200
    const-string v3, "openai"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez v4, :cond_0

    move v0, v1

    .line 201
    :goto_0
    invoke-static {p0}, Lru/fokus/tetrad/Ui;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v5

    .line 202
    const/16 v3, 0xa

    invoke-static {p0, v3}, Lru/fokus/tetrad/Ui;->row(Landroid/content/Context;I)Landroid/widget/LinearLayout;

    move-result-object v6

    .line 203
    const-string v3, "\u0418\u0418-\u043f\u0440\u043e\u0432\u0435\u0440\u043a\u0430"

    invoke-static {p0, v3}, Lru/fokus/tetrad/Ui;->title(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v3

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v7}, Lru/fokus/tetrad/Ui;->weight(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v6, v3, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 204
    iget-object v3, p0, Lru/fokus/tetrad/SettingsActivity;->store:Lru/fokus/tetrad/Store;

    invoke-virtual {v3}, Lru/fokus/tetrad/Store;->aiReady()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "\u043f\u043e\u0434\u043a\u043b\u044e\u0447\u0435\u043d\u0430"

    sget v7, Lru/fokus/tetrad/Ui;->OK:I

    sget v8, Lru/fokus/tetrad/Ui;->OK_SOFT:I

    invoke-static {p0, v3, v7, v8}, Lru/fokus/tetrad/Ui;->pill(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v3

    :goto_1
    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 205
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 207
    invoke-static {p0, v12}, Lru/fokus/tetrad/Ui;->row(Landroid/content/Context;I)Landroid/widget/LinearLayout;

    move-result-object v6

    .line 208
    const-string v3, "GigaChat"

    invoke-static {p0, v3, v0}, Lru/fokus/tetrad/Ui;->chip(Landroid/content/Context;Ljava/lang/String;Z)Landroid/widget/TextView;

    move-result-object v7

    .line 209
    new-instance v3, Lru/fokus/tetrad/SettingsActivity$12;

    invoke-direct {v3, p0}, Lru/fokus/tetrad/SettingsActivity$12;-><init>(Lru/fokus/tetrad/SettingsActivity;)V

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    const-string v3, "GLM (Z.ai)"

    invoke-static {p0, v3, v4}, Lru/fokus/tetrad/Ui;->chip(Landroid/content/Context;Ljava/lang/String;Z)Landroid/widget/TextView;

    move-result-object v8

    .line 211
    new-instance v3, Lru/fokus/tetrad/SettingsActivity$13;

    invoke-direct {v3, p0}, Lru/fokus/tetrad/SettingsActivity$13;-><init>(Lru/fokus/tetrad/SettingsActivity;)V

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    const-string v9, "\u0414\u0440\u0443\u0433\u043e\u0439"

    if-nez v0, :cond_2

    if-nez v4, :cond_2

    move v3, v1

    :goto_2
    invoke-static {p0, v9, v3}, Lru/fokus/tetrad/Ui;->chip(Landroid/content/Context;Ljava/lang/String;Z)Landroid/widget/TextView;

    move-result-object v3

    .line 213
    new-instance v9, Lru/fokus/tetrad/SettingsActivity$14;

    invoke-direct {v9, p0}, Lru/fokus/tetrad/SettingsActivity$14;-><init>(Lru/fokus/tetrad/SettingsActivity;)V

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 215
    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 216
    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 217
    new-instance v3, Landroid/widget/HorizontalScrollView;

    invoke-direct {v3, p0}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 218
    invoke-virtual {v3, v2}, Landroid/widget/HorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 219
    invoke-virtual {v3, v6}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;)V

    .line 220
    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 222
    if-eqz v4, :cond_3

    .line 223
    const-string v0, "GLM-4.6V-Flash \u043e\u0442 Zhipu (Z.ai) \u2014 \u0431\u0435\u0441\u043f\u043b\u0430\u0442\u043d\u0430\u044f \u043c\u043e\u0434\u0435\u043b\u044c, \u043f\u043e\u043d\u0438\u043c\u0430\u0435\u0442 \u0444\u043e\u0442\u043e. \u0420\u0435\u0433\u0438\u0441\u0442\u0440\u0430\u0446\u0438\u044f \u043f\u043e \u043f\u043e\u0447\u0442\u0435 \u0438\u043b\u0438 \u0447\u0435\u0440\u0435\u0437 Google, \u0421\u0431\u0435\u0440 ID \u043d\u0435 \u043d\u0443\u0436\u0435\u043d. \u0411\u0435\u0441\u043f\u043b\u0430\u0442\u043d\u043e \u043e\u0431\u0440\u0430\u0431\u0430\u0442\u044b\u0432\u0430\u0435\u0442\u0441\u044f \u043e\u0434\u0438\u043d \u0437\u0430\u043f\u0440\u043e\u0441 \u0437\u0430 \u0440\u0430\u0437. \u0414\u0430\u043d\u043d\u044b\u0435 \u043e\u0431\u0440\u0430\u0431\u0430\u0442\u044b\u0432\u0430\u044e\u0442\u0441\u044f \u043d\u0430 \u0441\u0435\u0440\u0432\u0435\u0440\u0430\u0445 \u0432 \u041a\u0438\u0442\u0430\u0435."

    sget v3, Lru/fokus/tetrad/Ui;->MUTED:I

    sget-object v4, Lru/fokus/tetrad/Ui;->BODY:Landroid/graphics/Typeface;

    invoke-static {p0, v0, v11, v3, v4}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 224
    const-string v0, "1"

    const-string v3, "\u041e\u0442\u043a\u0440\u043e\u0439 z.ai \u0438 \u0437\u0430\u0440\u0435\u0433\u0438\u0441\u0442\u0440\u0438\u0440\u0443\u0439\u0441\u044f (\u043f\u043e\u0447\u0442\u0430 \u0438\u043b\u0438 Google)."

    invoke-direct {p0, v0, v3}, Lru/fokus/tetrad/SettingsActivity;->step(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 225
    const-string v0, "2"

    const-string v3, "\u041e\u0442\u043a\u0440\u043e\u0439 \u0440\u0430\u0437\u0434\u0435\u043b API Keys \u0438 \u043d\u0430\u0436\u043c\u0438 \u00abCreate API Key\u00bb."

    invoke-direct {p0, v0, v3}, Lru/fokus/tetrad/SettingsActivity;->step(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 226
    const-string v0, "3"

    const-string v3, "\u0421\u043a\u043e\u043f\u0438\u0440\u0443\u0439 \u043a\u043b\u044e\u0447 \u0438 \u0432\u0441\u0442\u0430\u0432\u044c \u043d\u0438\u0436\u0435, \u0437\u0430\u0442\u0435\u043c \u043d\u0430\u0436\u043c\u0438 \u00ab\u041f\u0440\u043e\u0432\u0435\u0440\u0438\u0442\u044c \u043f\u043e\u0434\u043a\u043b\u044e\u0447\u0435\u043d\u0438\u0435\u00bb."

    invoke-direct {p0, v0, v3}, Lru/fokus/tetrad/SettingsActivity;->step(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 227
    const-string v0, "\u041e\u0442\u043a\u0440\u044b\u0442\u044c Z.ai \u2014 API Keys"

    invoke-static {p0, v0, v1, v2}, Lru/fokus/tetrad/Ui;->button(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v0

    .line 228
    new-instance v1, Lru/fokus/tetrad/SettingsActivity$15;

    invoke-direct {v1, p0}, Lru/fokus/tetrad/SettingsActivity$15;-><init>(Lru/fokus/tetrad/SettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    invoke-static {}, Lru/fokus/tetrad/Ui;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 232
    const-string v0, "API-\u043a\u043b\u044e\u0447 Z.ai"

    const-string v1, "\u0412\u0441\u0442\u0430\u0432\u044c \u043a\u043b\u044e\u0447"

    iget-object v3, p0, Lru/fokus/tetrad/SettingsActivity;->store:Lru/fokus/tetrad/Store;

    invoke-virtual {v3}, Lru/fokus/tetrad/Store;->zaiKey()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lru/fokus/tetrad/SettingsActivity$16;

    invoke-direct {v4, p0}, Lru/fokus/tetrad/SettingsActivity$16;-><init>(Lru/fokus/tetrad/SettingsActivity;)V

    invoke-direct {p0, v0, v1, v3, v4}, Lru/fokus/tetrad/SettingsActivity;->secretField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lru/fokus/tetrad/SettingsActivity$Save;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 233
    const-string v0, "glm-4.6v-flash"

    invoke-static {p0, v0, v2}, Lru/fokus/tetrad/Ui;->edit(Landroid/content/Context;Ljava/lang/String;Z)Landroid/widget/EditText;

    move-result-object v0

    .line 234
    invoke-virtual {v0, v10}, Landroid/widget/EditText;->setInputType(I)V

    .line 235
    iget-object v1, p0, Lru/fokus/tetrad/SettingsActivity;->store:Lru/fokus/tetrad/Store;

    invoke-virtual {v1}, Lru/fokus/tetrad/Store;->zaiModelRaw()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 236
    new-instance v1, Lru/fokus/tetrad/SettingsActivity$17;

    invoke-direct {v1, p0}, Lru/fokus/tetrad/SettingsActivity$17;-><init>(Lru/fokus/tetrad/SettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 237
    const-string v1, "\u041c\u043e\u0434\u0435\u043b\u044c (\u043e\u0431\u044b\u0447\u043d\u043e \u043c\u0435\u043d\u044f\u0442\u044c \u043d\u0435 \u043d\u0443\u0436\u043d\u043e)"

    invoke-direct {p0, v1, v0}, Lru/fokus/tetrad/SettingsActivity;->field(Ljava/lang/String;Landroid/view/View;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 238
    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 275
    :goto_3
    const-string v0, ""

    sget v1, Lru/fokus/tetrad/Ui;->MUTED:I

    sget-object v3, Lru/fokus/tetrad/Ui;->BODY:Landroid/graphics/Typeface;

    invoke-static {p0, v0, v11, v1, v3}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v0

    .line 276
    const-string v1, "\u041f\u0440\u043e\u0432\u0435\u0440\u0438\u0442\u044c \u043f\u043e\u0434\u043a\u043b\u044e\u0447\u0435\u043d\u0438\u0435"

    invoke-static {p0, v1, v2, v2}, Lru/fokus/tetrad/Ui;->button(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v1

    .line 277
    new-instance v2, Lru/fokus/tetrad/SettingsActivity$24;

    invoke-direct {v2, p0, v1, v0}, Lru/fokus/tetrad/SettingsActivity$24;-><init>(Lru/fokus/tetrad/SettingsActivity;Landroid/widget/TextView;Landroid/widget/TextView;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 297
    invoke-static {}, Lru/fokus/tetrad/Ui;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v5, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 298
    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 299
    return-object v5

    :cond_0
    move v0, v2

    .line 200
    goto/16 :goto_0

    .line 204
    :cond_1
    const-string v3, "\u043d\u0435 \u043f\u043e\u0434\u043a\u043b\u044e\u0447\u0435\u043d\u0430"

    sget v7, Lru/fokus/tetrad/Ui;->RED:I

    sget v8, Lru/fokus/tetrad/Ui;->RED_SOFT:I

    invoke-static {p0, v3, v7, v8}, Lru/fokus/tetrad/Ui;->pill(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v3

    goto/16 :goto_1

    :cond_2
    move v3, v2

    .line 212
    goto/16 :goto_2

    .line 239
    :cond_3
    if-eqz v0, :cond_5

    .line 240
    const-string v0, "GigaChat \u043e\u0442 \u0421\u0431\u0435\u0440\u0430 \u0431\u0435\u0441\u043f\u043b\u0430\u0442\u0435\u043d \u0434\u043b\u044f \u0444\u0438\u0437\u043b\u0438\u0446 \u0438 \u0440\u0430\u0431\u043e\u0442\u0430\u0435\u0442 \u0432 \u0420\u043e\u0441\u0441\u0438\u0438. \u041d\u0443\u0436\u0435\u043d \u043a\u043b\u044e\u0447 \u0430\u0432\u0442\u043e\u0440\u0438\u0437\u0430\u0446\u0438\u0438:"

    sget v3, Lru/fokus/tetrad/Ui;->MUTED:I

    sget-object v4, Lru/fokus/tetrad/Ui;->BODY:Landroid/graphics/Typeface;

    invoke-static {p0, v0, v11, v3, v4}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 241
    const-string v0, "1"

    const-string v3, "\u041e\u0442\u043a\u0440\u043e\u0439 \u043a\u0430\u0431\u0438\u043d\u0435\u0442 GigaChat \u0438 \u0432\u043e\u0439\u0434\u0438 \u0447\u0435\u0440\u0435\u0437 \u0421\u0431\u0435\u0440 ID."

    invoke-direct {p0, v0, v3}, Lru/fokus/tetrad/SettingsActivity;->step(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 242
    const-string v0, "2"

    const-string v3, "\u0421\u043e\u0437\u0434\u0430\u0439 \u043f\u0440\u043e\u0435\u043a\u0442 \u00abGigaChat API\u00bb, \u0437\u0430\u0442\u0435\u043c \u0432 \u0440\u0430\u0437\u0434\u0435\u043b\u0435 \u00ab\u041d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0430 API\u00bb \u043d\u0430\u0436\u043c\u0438 \u00ab\u041f\u043e\u043b\u0443\u0447\u0438\u0442\u044c \u043a\u043b\u044e\u0447\u00bb."

    invoke-direct {p0, v0, v3}, Lru/fokus/tetrad/SettingsActivity;->step(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 243
    const-string v0, "3"

    const-string v3, "\u0421\u043a\u043e\u043f\u0438\u0440\u0443\u0439 \u00ab\u041a\u043b\u044e\u0447 \u0430\u0432\u0442\u043e\u0440\u0438\u0437\u0430\u0446\u0438\u0438\u00bb (\u0434\u043b\u0438\u043d\u043d\u0430\u044f \u0441\u0442\u0440\u043e\u043a\u0430, \u043e\u0431\u044b\u0447\u043d\u043e \u0441 \u00ab==\u00bb \u043d\u0430 \u043a\u043e\u043d\u0446\u0435) \u0438 \u0432\u0441\u0442\u0430\u0432\u044c \u043d\u0438\u0436\u0435."

    invoke-direct {p0, v0, v3}, Lru/fokus/tetrad/SettingsActivity;->step(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 244
    const-string v0, "\u041e\u0442\u043a\u0440\u044b\u0442\u044c \u043a\u0430\u0431\u0438\u043d\u0435\u0442 GigaChat"

    invoke-static {p0, v0, v1, v2}, Lru/fokus/tetrad/Ui;->button(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v0

    .line 245
    new-instance v3, Lru/fokus/tetrad/SettingsActivity$18;

    invoke-direct {v3, p0}, Lru/fokus/tetrad/SettingsActivity$18;-><init>(Lru/fokus/tetrad/SettingsActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 248
    invoke-static {}, Lru/fokus/tetrad/Ui;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v5, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 249
    const-string v0, "\u041a\u043b\u044e\u0447 \u0430\u0432\u0442\u043e\u0440\u0438\u0437\u0430\u0446\u0438\u0438"

    const-string v3, "\u0412\u0441\u0442\u0430\u0432\u044c \u043a\u043b\u044e\u0447"

    iget-object v4, p0, Lru/fokus/tetrad/SettingsActivity;->store:Lru/fokus/tetrad/Store;

    invoke-virtual {v4}, Lru/fokus/tetrad/Store;->gigaKey()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lru/fokus/tetrad/SettingsActivity$19;

    invoke-direct {v6, p0}, Lru/fokus/tetrad/SettingsActivity$19;-><init>(Lru/fokus/tetrad/SettingsActivity;)V

    invoke-direct {p0, v0, v3, v4, v6}, Lru/fokus/tetrad/SettingsActivity;->secretField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lru/fokus/tetrad/SettingsActivity$Save;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 250
    invoke-static {p0, v12}, Lru/fokus/tetrad/Ui;->row(Landroid/content/Context;I)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 251
    sget-object v4, Lru/fokus/tetrad/AiClient;->GIGA_MODELS:[[Ljava/lang/String;

    array-length v6, v4

    move v0, v2

    :goto_4
    if-ge v0, v6, :cond_4

    aget-object v7, v4, v0

    .line 252
    aget-object v8, v7, v1

    const-string v9, "GigaChat 2 "

    const-string v10, ""

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    aget-object v9, v7, v2

    iget-object v10, p0, Lru/fokus/tetrad/SettingsActivity;->store:Lru/fokus/tetrad/Store;

    invoke-virtual {v10}, Lru/fokus/tetrad/Store;->gigaModel()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    invoke-static {p0, v8, v9}, Lru/fokus/tetrad/Ui;->chip(Landroid/content/Context;Ljava/lang/String;Z)Landroid/widget/TextView;

    move-result-object v8

    .line 253
    new-instance v9, Lru/fokus/tetrad/SettingsActivity$20;

    invoke-direct {v9, p0, v7}, Lru/fokus/tetrad/SettingsActivity$20;-><init>(Lru/fokus/tetrad/SettingsActivity;[Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 254
    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 251
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 256
    :cond_4
    const/4 v0, 0x6

    invoke-static {p0, v0}, Lru/fokus/tetrad/Ui;->col(Landroid/content/Context;I)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 257
    const-string v1, "\u041c\u043e\u0434\u0435\u043b\u044c (Max \u0442\u043e\u0447\u043d\u0435\u0435, Pro \u0431\u044b\u0441\u0442\u0440\u0435\u0435)"

    invoke-static {p0, v1}, Lru/fokus/tetrad/Ui;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 258
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 259
    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_3

    .line 261
    :cond_5
    const-string v0, "\u041b\u044e\u0431\u043e\u0439 \u0441\u0435\u0440\u0432\u0438\u0441 \u0441 OpenAI-\u0441\u043e\u0432\u043c\u0435\u0441\u0442\u0438\u043c\u044b\u043c API. \u041f\u043e \u0443\u043c\u043e\u043b\u0447\u0430\u043d\u0438\u044e \u2014 OpenRouter \u0441 \u0431\u0435\u0441\u043f\u043b\u0430\u0442\u043d\u043e\u0439 \u043c\u043e\u0434\u0435\u043b\u044c\u044e openrouter/free; \u0435\u0433\u043e \u0434\u043e\u0441\u0442\u0443\u043f\u043d\u043e\u0441\u0442\u044c \u0438\u0437 \u0420\u043e\u0441\u0441\u0438\u0438 \u043d\u0435 \u0433\u0430\u0440\u0430\u043d\u0442\u0438\u0440\u043e\u0432\u0430\u043d\u0430."

    sget v1, Lru/fokus/tetrad/Ui;->MUTED:I

    sget-object v3, Lru/fokus/tetrad/Ui;->BODY:Landroid/graphics/Typeface;

    invoke-static {p0, v0, v11, v1, v3}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 262
    const-string v0, "https://openrouter.ai/api/v1"

    invoke-static {p0, v0, v2}, Lru/fokus/tetrad/Ui;->edit(Landroid/content/Context;Ljava/lang/String;Z)Landroid/widget/EditText;

    move-result-object v0

    .line 263
    invoke-virtual {v0, v10}, Landroid/widget/EditText;->setInputType(I)V

    .line 264
    iget-object v1, p0, Lru/fokus/tetrad/SettingsActivity;->store:Lru/fokus/tetrad/Store;

    invoke-virtual {v1}, Lru/fokus/tetrad/Store;->oaBaseRaw()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 265
    new-instance v1, Lru/fokus/tetrad/SettingsActivity$21;

    invoke-direct {v1, p0}, Lru/fokus/tetrad/SettingsActivity$21;-><init>(Lru/fokus/tetrad/SettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 266
    const-string v1, "\u0410\u0434\u0440\u0435\u0441 API"

    invoke-direct {p0, v1, v0}, Lru/fokus/tetrad/SettingsActivity;->field(Ljava/lang/String;Landroid/view/View;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 267
    const-string v0, "API-\u043a\u043b\u044e\u0447"

    const-string v1, "sk-\u2026"

    iget-object v3, p0, Lru/fokus/tetrad/SettingsActivity;->store:Lru/fokus/tetrad/Store;

    invoke-virtual {v3}, Lru/fokus/tetrad/Store;->oaKey()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lru/fokus/tetrad/SettingsActivity$22;

    invoke-direct {v4, p0}, Lru/fokus/tetrad/SettingsActivity$22;-><init>(Lru/fokus/tetrad/SettingsActivity;)V

    invoke-direct {p0, v0, v1, v3, v4}, Lru/fokus/tetrad/SettingsActivity;->secretField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lru/fokus/tetrad/SettingsActivity$Save;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 268
    const-string v0, "openrouter/free"

    invoke-static {p0, v0, v2}, Lru/fokus/tetrad/Ui;->edit(Landroid/content/Context;Ljava/lang/String;Z)Landroid/widget/EditText;

    move-result-object v0

    .line 269
    invoke-virtual {v0, v10}, Landroid/widget/EditText;->setInputType(I)V

    .line 270
    iget-object v1, p0, Lru/fokus/tetrad/SettingsActivity;->store:Lru/fokus/tetrad/Store;

    invoke-virtual {v1}, Lru/fokus/tetrad/Store;->oaModelRaw()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 271
    new-instance v1, Lru/fokus/tetrad/SettingsActivity$23;

    invoke-direct {v1, p0}, Lru/fokus/tetrad/SettingsActivity$23;-><init>(Lru/fokus/tetrad/SettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 272
    const-string v1, "\u041c\u043e\u0434\u0435\u043b\u044c"

    invoke-direct {p0, v1, v0}, Lru/fokus/tetrad/SettingsActivity;->field(Ljava/lang/String;Landroid/view/View;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_3
.end method

.method private field(Ljava/lang/String;Landroid/view/View;)Landroid/widget/LinearLayout;
    .locals 2

    .prologue
    .line 303
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lru/fokus/tetrad/Ui;->col(Landroid/content/Context;I)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 304
    invoke-static {p0, p1}, Lru/fokus/tetrad/Ui;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 305
    invoke-static {}, Lru/fokus/tetrad/Ui;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 306
    return-object v0
.end method

.method private permRow(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)Landroid/view/View;
    .locals 7

    .prologue
    const/high16 v5, 0x41d00000    # 26.0f

    const/4 v6, 0x0

    .line 331
    const/16 v0, 0xc

    invoke-static {p0, v0}, Lru/fokus/tetrad/Ui;->row(Landroid/content/Context;I)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 332
    const/16 v0, 0x30

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 333
    if-eqz p1, :cond_1

    const-string v0, "\u2713"

    move-object v1, v0

    :goto_0
    const/high16 v3, 0x41600000    # 14.0f

    if-eqz p1, :cond_2

    sget v0, Lru/fokus/tetrad/Ui;->ON_INK:I

    :goto_1
    sget-object v4, Lru/fokus/tetrad/Ui;->BOLD:Landroid/graphics/Typeface;

    invoke-static {p0, v1, v3, v0, v4}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v1

    .line 334
    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 335
    if-eqz p1, :cond_3

    sget v0, Lru/fokus/tetrad/Ui;->OK:I

    :goto_2
    const v3, 0x4479c000    # 999.0f

    const/4 v4, 0x0

    invoke-static {v0, v3, v6, v4}, Lru/fokus/tetrad/Ui;->round(IFIF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 336
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {v5}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v3

    invoke-static {v5}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v4

    invoke-direct {v0, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 337
    const/4 v0, 0x4

    invoke-static {p0, v0}, Lru/fokus/tetrad/Ui;->col(Landroid/content/Context;I)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p1, :cond_4

    const-string v0, " \u2014 \u0433\u043e\u0442\u043e\u0432\u043e"

    :goto_3
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/high16 v3, 0x41800000    # 16.0f

    sget v4, Lru/fokus/tetrad/Ui;->FG:I

    sget-object v5, Lru/fokus/tetrad/Ui;->MEDIUM:Landroid/graphics/Typeface;

    invoke-static {p0, v0, v3, v4, v5}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 339
    if-nez p1, :cond_0

    .line 340
    const/high16 v0, 0x41500000    # 13.0f

    sget v3, Lru/fokus/tetrad/Ui;->MUTED:I

    sget-object v4, Lru/fokus/tetrad/Ui;->BODY:Landroid/graphics/Typeface;

    invoke-static {p0, p3, v0, v3, v4}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 341
    invoke-static {p0, p4, v6, v6}, Lru/fokus/tetrad/Ui;->button(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v0

    .line 342
    new-instance v3, Lru/fokus/tetrad/SettingsActivity$27;

    invoke-direct {v3, p0, p5}, Lru/fokus/tetrad/SettingsActivity$27;-><init>(Lru/fokus/tetrad/SettingsActivity;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 343
    invoke-static {}, Lru/fokus/tetrad/Ui;->wrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 345
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Lru/fokus/tetrad/Ui;->weight(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 346
    return-object v2

    .line 333
    :cond_1
    const-string v0, "!"

    move-object v1, v0

    goto/16 :goto_0

    :cond_2
    sget v0, Lru/fokus/tetrad/Ui;->WARN:I

    goto/16 :goto_1

    .line 335
    :cond_3
    sget v0, Lru/fokus/tetrad/Ui;->WARN_SOFT:I

    goto :goto_2

    .line 338
    :cond_4
    const-string v0, ""

    goto :goto_3
.end method

.method private render()V
    .locals 12

    .prologue
    .line 50
    iget-object v0, p0, Lru/fokus/tetrad/SettingsActivity;->content:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 51
    iget-object v0, p0, Lru/fokus/tetrad/SettingsActivity;->content:Landroid/widget/LinearLayout;

    const-string v1, "\u041d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0438"

    invoke-static {p0, v1}, Lru/fokus/tetrad/Ui;->header(Landroid/app/Activity;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 54
    invoke-static {p0}, Lru/fokus/tetrad/BlockerService;->isEnabled(Landroid/content/Context;)Z

    move-result v1

    invoke-static {p0}, Lru/fokus/tetrad/BlockerService;->hasUsageAccess(Landroid/content/Context;)Z

    move-result v8

    .line 55
    invoke-static {p0}, Lru/fokus/tetrad/BlockerService;->batteryUnrestricted(Landroid/content/Context;)Z

    move-result v9

    invoke-static {p0}, Lru/fokus/tetrad/BlockerService;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v10

    .line 56
    if-eqz v1, :cond_3

    if-eqz v8, :cond_3

    if-eqz v9, :cond_3

    if-eqz v10, :cond_3

    const/4 v0, 0x1

    .line 57
    :goto_0
    invoke-static {p0}, Lru/fokus/tetrad/Ui;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v11

    .line 58
    const/16 v2, 0xa

    invoke-static {p0, v2}, Lru/fokus/tetrad/Ui;->row(Landroid/content/Context;I)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 59
    const-string v3, "\u0411\u043b\u043e\u043a\u0438\u0440\u043e\u0432\u043a\u0430 \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u0439"

    invoke-static {p0, v3}, Lru/fokus/tetrad/Ui;->title(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v4}, Lru/fokus/tetrad/Ui;->weight(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 60
    if-eqz v0, :cond_4

    const-string v0, "\u0432\u0441\u0451 \u0433\u043e\u0442\u043e\u0432\u043e"

    sget v3, Lru/fokus/tetrad/Ui;->OK:I

    sget v4, Lru/fokus/tetrad/Ui;->OK_SOFT:I

    invoke-static {p0, v0, v3, v4}, Lru/fokus/tetrad/Ui;->pill(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v0

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 62
    invoke-virtual {v11, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 63
    const-string v0, "\u0427\u0442\u043e\u0431\u044b \u043d\u0438 \u043e\u0434\u043d\u043e \u0437\u0430\u043f\u0440\u0435\u0449\u0451\u043d\u043d\u043e\u0435 \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u0435 \u043d\u0435 \u043f\u0440\u043e\u0441\u043a\u043e\u0447\u0438\u043b\u043e, \u043d\u0443\u0436\u043d\u044b \u0447\u0435\u0442\u044b\u0440\u0435 \u0440\u0430\u0437\u0440\u0435\u0448\u0435\u043d\u0438\u044f. \u0418\u0445 \u0434\u0430\u044e\u0442 \u043e\u0434\u0438\u043d \u0440\u0430\u0437."

    const/high16 v2, 0x41600000    # 14.0f

    sget v3, Lru/fokus/tetrad/Ui;->MUTED:I

    sget-object v4, Lru/fokus/tetrad/Ui;->BODY:Landroid/graphics/Typeface;

    invoke-static {p0, v0, v2, v3, v4}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 65
    const-string v2, "\u0421\u043f\u0435\u0446. \u0432\u043e\u0437\u043c\u043e\u0436\u043d\u043e\u0441\u0442\u0438"

    const-string v3, "\u0417\u0430\u043c\u0435\u0447\u0430\u0435\u0442, \u0447\u0442\u043e \u043e\u0442\u043a\u0440\u044b\u043b\u043e\u0441\u044c \u0437\u0430\u043f\u0440\u0435\u0449\u0451\u043d\u043d\u043e\u0435 \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u0435, \u0438 \u0437\u0430\u043a\u0440\u044b\u0432\u0430\u0435\u0442 \u0435\u0433\u043e. \u041d\u0430\u0439\u0434\u0438 \u00ab\u0424\u043e\u043a\u0443\u0441-\u0442\u0435\u0442\u0440\u0430\u0434\u044c\u00bb \u0432 \u0441\u043f\u0438\u0441\u043a\u0435 \u0438 \u0432\u043a\u043b\u044e\u0447\u0438. \u0415\u0441\u043b\u0438 \u043f\u0435\u0440\u0435\u043a\u043b\u044e\u0447\u0430\u0442\u0435\u043b\u044c \u0441\u0435\u0440\u044b\u0439 \u2014 \u043d\u0430\u0436\u043c\u0438 \u00ab\u0421\u0432\u0435\u0434\u0435\u043d\u0438\u044f \u043e \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u0438\u00bb \u2192 \u22ee \u2192 \u00ab\u0420\u0430\u0437\u0440\u0435\u0448\u0438\u0442\u044c \u043d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0438 \u0441 \u043e\u0433\u0440\u0430\u043d\u0438\u0447\u0435\u043d\u043d\u044b\u043c \u0434\u043e\u0441\u0442\u0443\u043f\u043e\u043c\u00bb."

    const-string v4, "\u041e\u0442\u043a\u0440\u044b\u0442\u044c"

    new-instance v5, Lru/fokus/tetrad/SettingsActivity$1;

    invoke-direct {v5, p0}, Lru/fokus/tetrad/SettingsActivity$1;-><init>(Lru/fokus/tetrad/SettingsActivity;)V

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lru/fokus/tetrad/SettingsActivity;->permRow(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 70
    if-nez v1, :cond_0

    .line 71
    const-string v0, "\u0421\u0432\u0435\u0434\u0435\u043d\u0438\u044f \u043e \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u0438"

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-static {p0, v0, v2, v3}, Lru/fokus/tetrad/Ui;->button(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v0

    .line 72
    new-instance v2, Lru/fokus/tetrad/SettingsActivity$2;

    invoke-direct {v2, p0}, Lru/fokus/tetrad/SettingsActivity$2;-><init>(Lru/fokus/tetrad/SettingsActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    invoke-static {}, Lru/fokus/tetrad/Ui;->wrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v11, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    :cond_0
    const-string v4, "\u041f\u043e\u0432\u0435\u0440\u0445 \u0434\u0440\u0443\u0433\u0438\u0445 \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u0439"

    const-string v5, "\u0413\u043b\u0430\u0432\u043d\u043e\u0435 \u0434\u043b\u044f \u043d\u0430\u0434\u0451\u0436\u043d\u043e\u0439 \u0431\u043b\u043e\u043a\u0438\u0440\u043e\u0432\u043a\u0438: \u0431\u0435\u0437 \u043d\u0435\u0433\u043e \u044d\u043a\u0440\u0430\u043d \u00ab\u041f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u0435 \u0437\u0430\u0431\u043b\u043e\u043a\u0438\u0440\u043e\u0432\u0430\u043d\u043e\u00bb \u043f\u043e\u043a\u0430\u0437\u044b\u0432\u0430\u0435\u0442\u0441\u044f \u0442\u043e\u043b\u044c\u043a\u043e \u0432\u043d\u0443\u0442\u0440\u0438 \u00ab\u0424\u043e\u043a\u0443\u0441-\u0442\u0435\u0442\u0440\u0430\u0434\u0438\u00bb, \u0430 \u043d\u0435 \u043f\u043e\u0432\u0435\u0440\u0445 TikTok \u0438\u043b\u0438 \u0438\u0433\u0440\u044b. \u041d\u0430\u0439\u0434\u0438 \u00ab\u0424\u043e\u043a\u0443\u0441-\u0442\u0435\u0442\u0440\u0430\u0434\u044c\u00bb \u0438 \u0432\u043a\u043b\u044e\u0447\u0438 \u00ab\u0420\u0430\u0437\u0440\u0435\u0448\u0438\u0442\u044c \u043e\u0442\u043e\u0431\u0440\u0430\u0436\u0435\u043d\u0438\u0435 \u043f\u043e\u0432\u0435\u0440\u0445 \u0434\u0440\u0443\u0433\u0438\u0445 \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u0439\u00bb."

    const-string v6, "\u0420\u0430\u0437\u0440\u0435\u0448\u0438\u0442\u044c"

    new-instance v7, Lru/fokus/tetrad/SettingsActivity$3;

    invoke-direct {v7, p0}, Lru/fokus/tetrad/SettingsActivity$3;-><init>(Lru/fokus/tetrad/SettingsActivity;)V

    move-object v2, p0

    move v3, v10

    invoke-direct/range {v2 .. v7}, Lru/fokus/tetrad/SettingsActivity;->permRow(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 85
    const-string v4, "\u0414\u043e\u0441\u0442\u0443\u043f \u043a \u0438\u0441\u0442\u043e\u0440\u0438\u0438 \u0438\u0441\u043f\u043e\u043b\u044c\u0437\u043e\u0432\u0430\u043d\u0438\u044f"

    const-string v5, "\u0412\u0442\u043e\u0440\u043e\u0439 \u0441\u043f\u043e\u0441\u043e\u0431 \u0443\u0437\u043d\u0430\u0442\u044c, \u043a\u0430\u043a\u043e\u0435 \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u0435 \u043e\u0442\u043a\u0440\u044b\u0442\u043e. \u041b\u043e\u0432\u0438\u0442 \u0442\u043e, \u0447\u0442\u043e \u043f\u0440\u043e\u043f\u0443\u0441\u043a\u0430\u044e\u0442 \u0441\u043f\u0435\u0446. \u0432\u043e\u0437\u043c\u043e\u0436\u043d\u043e\u0441\u0442\u0438 (\u043d\u0430 Xiaomi \u2014 \u043e\u0431\u044f\u0437\u0430\u0442\u0435\u043b\u044c\u043d\u043e). \u041d\u0430\u0439\u0434\u0438 \u00ab\u0424\u043e\u043a\u0443\u0441-\u0442\u0435\u0442\u0440\u0430\u0434\u044c\u00bb \u0438 \u0440\u0430\u0437\u0440\u0435\u0448\u0438."

    const-string v6, "\u041e\u0442\u043a\u0440\u044b\u0442\u044c"

    new-instance v7, Lru/fokus/tetrad/SettingsActivity$4;

    invoke-direct {v7, p0}, Lru/fokus/tetrad/SettingsActivity$4;-><init>(Lru/fokus/tetrad/SettingsActivity;)V

    move-object v2, p0

    move v3, v8

    invoke-direct/range {v2 .. v7}, Lru/fokus/tetrad/SettingsActivity;->permRow(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 90
    const-string v4, "\u0420\u0430\u0431\u043e\u0442\u0430 \u0432 \u0444\u043e\u043d\u0435 \u0431\u0435\u0437 \u043e\u0433\u0440\u0430\u043d\u0438\u0447\u0435\u043d\u0438\u0439"

    const-string v5, "\u0427\u0442\u043e\u0431\u044b \u0442\u0435\u043b\u0435\u0444\u043e\u043d \u043d\u0435 \u0432\u044b\u043a\u043b\u044e\u0447\u0430\u043b \u0431\u043b\u043e\u043a\u0438\u0440\u043e\u0432\u043a\u0443 \u0434\u043b\u044f \u044d\u043a\u043e\u043d\u043e\u043c\u0438\u0438 \u0431\u0430\u0442\u0430\u0440\u0435\u0438. \u041d\u0430 Xiaomi \u0442\u0430\u043a\u0436\u0435 \u0432\u043a\u043b\u044e\u0447\u0438 \u00ab\u0410\u0432\u0442\u043e\u0437\u0430\u043f\u0443\u0441\u043a\u00bb \u0432 \u0441\u0432\u0435\u0434\u0435\u043d\u0438\u044f\u0445 \u043e \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u0438."

    const-string v6, "\u0420\u0430\u0437\u0440\u0435\u0448\u0438\u0442\u044c"

    new-instance v7, Lru/fokus/tetrad/SettingsActivity$5;

    invoke-direct {v7, p0}, Lru/fokus/tetrad/SettingsActivity$5;-><init>(Lru/fokus/tetrad/SettingsActivity;)V

    move-object v2, p0

    move v3, v9

    invoke-direct/range {v2 .. v7}, Lru/fokus/tetrad/SettingsActivity;->permRow(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 97
    if-eqz v1, :cond_1

    const-string v0, "\u0415\u0441\u043b\u0438 \u0431\u043b\u043e\u043a\u0438\u0440\u043e\u0432\u043a\u0430 \u043f\u0435\u0440\u0435\u0441\u0442\u0430\u043b\u0430 \u0441\u0440\u0430\u0431\u0430\u0442\u044b\u0432\u0430\u0442\u044c \u043f\u043e\u0441\u043b\u0435 \u043e\u0431\u043d\u043e\u0432\u043b\u0435\u043d\u0438\u044f \u2014 \u0432\u044b\u043a\u043b\u044e\u0447\u0438 \u0438 \u0441\u043d\u043e\u0432\u0430 \u0432\u043a\u043b\u044e\u0447\u0438 \u00ab\u0424\u043e\u043a\u0443\u0441-\u0442\u0435\u0442\u0440\u0430\u0434\u044c\u00bb \u0432 \u0421\u043f\u0435\u0446. \u0432\u043e\u0437\u043c\u043e\u0436\u043d\u043e\u0441\u0442\u044f\u0445."

    const/high16 v1, 0x41500000    # 13.0f

    sget v2, Lru/fokus/tetrad/Ui;->MUTED:I

    sget-object v3, Lru/fokus/tetrad/Ui;->BODY:Landroid/graphics/Typeface;

    invoke-static {p0, v0, v1, v2, v3}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 98
    :cond_1
    const-string v0, "\u0418\u0441\u043f\u043e\u043b\u044c\u0437\u0443\u044e\u0442\u0441\u044f \u0442\u043e\u043b\u044c\u043a\u043e \u043d\u0430\u0437\u0432\u0430\u043d\u0438\u044f \u043e\u0442\u043a\u0440\u044b\u0442\u044b\u0445 \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u0439. \u041d\u0438\u0447\u0435\u0433\u043e \u043d\u0435 \u0437\u0430\u043f\u0438\u0441\u044b\u0432\u0430\u0435\u0442\u0441\u044f \u0438 \u043d\u0438\u043a\u0443\u0434\u0430 \u043d\u0435 \u043e\u0442\u043f\u0440\u0430\u0432\u043b\u044f\u0435\u0442\u0441\u044f."

    const/high16 v1, 0x41500000    # 13.0f

    sget v2, Lru/fokus/tetrad/Ui;->MUTED:I

    sget-object v3, Lru/fokus/tetrad/Ui;->BODY:Landroid/graphics/Typeface;

    invoke-static {p0, v0, v1, v2, v3}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 99
    iget-object v0, p0, Lru/fokus/tetrad/SettingsActivity;->content:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 102
    invoke-static {p0}, Lru/fokus/tetrad/Ui;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 103
    const/16 v0, 0xa

    invoke-static {p0, v0}, Lru/fokus/tetrad/Ui;->row(Landroid/content/Context;I)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 104
    const-string v0, "\u041c\u042d\u0428"

    invoke-static {p0, v0}, Lru/fokus/tetrad/Ui;->title(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3}, Lru/fokus/tetrad/Ui;->weight(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    invoke-static {p0}, Lru/fokus/tetrad/Mesh;->loggedIn(Landroid/content/Context;)Z

    move-result v3

    .line 106
    if-eqz v3, :cond_6

    const-string v0, "\u0432\u0445\u043e\u0434 \u0432\u044b\u043f\u043e\u043b\u043d\u0435\u043d"

    sget v4, Lru/fokus/tetrad/Ui;->OK:I

    sget v5, Lru/fokus/tetrad/Ui;->OK_SOFT:I

    invoke-static {p0, v0, v4, v5}, Lru/fokus/tetrad/Ui;->pill(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v0

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 107
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 108
    iget-object v0, p0, Lru/fokus/tetrad/SettingsActivity;->store:Lru/fokus/tetrad/Store;

    invoke-virtual {v0}, Lru/fokus/tetrad/Store;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "meshName"

    const-string v4, ""

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 109
    if-eqz v3, :cond_8

    .line 110
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v0, ""

    :goto_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u0417\u0430\u0434\u0430\u043d\u0438\u044f \u0431\u0435\u0440\u0443\u0442\u0441\u044f \u043a\u043d\u043e\u043f\u043a\u043e\u0439 \u00ab\u0412\u0437\u044f\u0442\u044c \u0437\u0430\u0434\u0430\u043d\u0438\u0435 \u0438\u0437 \u041c\u042d\u0428\u00bb \u043d\u0430 \u0433\u043b\u0430\u0432\u043d\u043e\u043c \u044d\u043a\u0440\u0430\u043d\u0435."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 111
    :goto_4
    const/high16 v1, 0x41600000    # 14.0f

    sget v4, Lru/fokus/tetrad/Ui;->MUTED:I

    sget-object v5, Lru/fokus/tetrad/Ui;->BODY:Landroid/graphics/Typeface;

    .line 109
    invoke-static {p0, v0, v1, v4, v5}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 112
    if-eqz v3, :cond_9

    const-string v0, "\u0412\u044b\u0439\u0442\u0438 \u0438\u0437 \u041c\u042d\u0428"

    move-object v1, v0

    :goto_5
    if-eqz v3, :cond_a

    const/4 v0, 0x2

    :goto_6
    const/4 v4, 0x0

    invoke-static {p0, v1, v0, v4}, Lru/fokus/tetrad/Ui;->button(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v0

    .line 113
    new-instance v1, Lru/fokus/tetrad/SettingsActivity$6;

    invoke-direct {v1, p0, v3}, Lru/fokus/tetrad/SettingsActivity$6;-><init>(Lru/fokus/tetrad/SettingsActivity;Z)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    invoke-static {}, Lru/fokus/tetrad/Ui;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 118
    const-string v0, "\u042d\u0442\u043e \u043d\u0435\u043e\u0444\u0438\u0446\u0438\u0430\u043b\u044c\u043d\u043e\u0435 \u043f\u043e\u0434\u043a\u043b\u044e\u0447\u0435\u043d\u0438\u0435: \u0435\u0441\u043b\u0438 \u041c\u042d\u0428 \u0438\u0437\u043c\u0435\u043d\u0438\u0442 \u0441\u0430\u0439\u0442, \u0437\u0430\u0433\u0440\u0443\u0437\u043a\u0430 \u0437\u0430\u0434\u0430\u043d\u0438\u0439 \u043c\u043e\u0436\u0435\u0442 \u0432\u0440\u0435\u043c\u0435\u043d\u043d\u043e \u043f\u0435\u0440\u0435\u0441\u0442\u0430\u0442\u044c \u0440\u0430\u0431\u043e\u0442\u0430\u0442\u044c."

    const/high16 v1, 0x41400000    # 12.0f

    sget v3, Lru/fokus/tetrad/Ui;->MUTED:I

    sget-object v4, Lru/fokus/tetrad/Ui;->BODY:Landroid/graphics/Typeface;

    invoke-static {p0, v0, v1, v3, v4}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 119
    iget-object v0, p0, Lru/fokus/tetrad/SettingsActivity;->content:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 122
    invoke-static {p0}, Lru/fokus/tetrad/GroupPicker;->available(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 123
    invoke-static {p0}, Lru/fokus/tetrad/Ui;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 124
    const/16 v0, 0xa

    invoke-static {p0, v0}, Lru/fokus/tetrad/Ui;->row(Landroid/content/Context;I)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 125
    const-string v0, "\u041c\u043e\u0438 \u0433\u0440\u0443\u043f\u043f\u044b"

    invoke-static {p0, v0}, Lru/fokus/tetrad/Ui;->title(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3}, Lru/fokus/tetrad/Ui;->weight(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 126
    invoke-static {p0}, Lru/fokus/tetrad/GroupPicker;->needsChoice(Landroid/content/Context;)Z

    move-result v3

    .line 127
    if-eqz v3, :cond_b

    const-string v0, "\u043d\u0435 \u0432\u044b\u0431\u0440\u0430\u043d\u044b"

    sget v4, Lru/fokus/tetrad/Ui;->WARN:I

    sget v5, Lru/fokus/tetrad/Ui;->WARN_SOFT:I

    invoke-static {p0, v0, v4, v5}, Lru/fokus/tetrad/Ui;->pill(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v0

    :goto_7
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 128
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 129
    const-string v0, "\u0413\u0440\u0443\u043f\u043f\u044b \u0432\u0437\u044f\u0442\u044b \u0438\u0437 \u0440\u0430\u0441\u043f\u0438\u0441\u0430\u043d\u0438\u044f. \u041f\u043e \u043d\u0438\u043c \u043e\u0441\u0442\u0430\u044e\u0442\u0441\u044f \u0442\u043e\u043b\u044c\u043a\u043e \u0442\u0432\u043e\u0438 \u0443\u0440\u043e\u043a\u0438, \u043a\u0430\u0431\u0438\u043d\u0435\u0442\u044b \u0438 \u043d\u0430\u043f\u043e\u043c\u0438\u043d\u0430\u043d\u0438\u044f."

    const/high16 v2, 0x41600000    # 14.0f

    sget v4, Lru/fokus/tetrad/Ui;->MUTED:I

    sget-object v5, Lru/fokus/tetrad/Ui;->BODY:Landroid/graphics/Typeface;

    invoke-static {p0, v0, v2, v4, v5}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 130
    if-eqz v3, :cond_c

    const-string v0, "\u0412\u044b\u0431\u0440\u0430\u0442\u044c \u0433\u0440\u0443\u043f\u043f\u044b"

    :goto_8
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p0, v0, v2, v3}, Lru/fokus/tetrad/Ui;->button(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v0

    .line 131
    new-instance v2, Lru/fokus/tetrad/SettingsActivity$7;

    invoke-direct {v2, p0}, Lru/fokus/tetrad/SettingsActivity$7;-><init>(Lru/fokus/tetrad/SettingsActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    invoke-static {}, Lru/fokus/tetrad/Ui;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 135
    iget-object v0, p0, Lru/fokus/tetrad/SettingsActivity;->content:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 139
    :cond_2
    invoke-static {p0}, Lru/fokus/tetrad/Ui;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 140
    const-string v0, "\u041a\u043b\u0430\u0441\u0441"

    invoke-static {p0, v0}, Lru/fokus/tetrad/Ui;->title(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 141
    const-string v0, "\u0418\u0418 \u043e\u0431\u044a\u044f\u0441\u043d\u044f\u0435\u0442 \u043e\u0448\u0438\u0431\u043a\u0438 \u043d\u0430 \u0443\u0440\u043e\u0432\u043d\u0435 \u044d\u0442\u043e\u0433\u043e \u043a\u043b\u0430\u0441\u0441\u0430."

    const/high16 v2, 0x41600000    # 14.0f

    sget v3, Lru/fokus/tetrad/Ui;->MUTED:I

    sget-object v4, Lru/fokus/tetrad/Ui;->BODY:Landroid/graphics/Typeface;

    invoke-static {p0, v0, v2, v3, v4}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 142
    new-instance v2, Landroid/widget/HorizontalScrollView;

    invoke-direct {v2, p0}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 143
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/widget/HorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 144
    const/16 v0, 0x8

    invoke-static {p0, v0}, Lru/fokus/tetrad/Ui;->row(Landroid/content/Context;I)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 145
    const/4 v0, 0x1

    :goto_9
    const/16 v4, 0xb

    if-gt v0, v4, :cond_d

    .line 146
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 147
    iget-object v5, p0, Lru/fokus/tetrad/SettingsActivity;->store:Lru/fokus/tetrad/Store;

    invoke-virtual {v5}, Lru/fokus/tetrad/Store;->grade()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-static {p0, v4, v5}, Lru/fokus/tetrad/Ui;->chip(Landroid/content/Context;Ljava/lang/String;Z)Landroid/widget/TextView;

    move-result-object v5

    .line 148
    const/high16 v6, 0x42400000    # 48.0f

    invoke-static {v6}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 149
    new-instance v6, Lru/fokus/tetrad/SettingsActivity$8;

    invoke-direct {v6, p0, v4, v3, v5}, Lru/fokus/tetrad/SettingsActivity$8;-><init>(Lru/fokus/tetrad/SettingsActivity;Ljava/lang/String;Landroid/widget/LinearLayout;Landroid/widget/TextView;)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 145
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 56
    :cond_3
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 61
    :cond_4
    if-eqz v1, :cond_5

    const-string v0, "\u043d\u0435 \u0434\u043e \u043a\u043e\u043d\u0446\u0430"

    sget v3, Lru/fokus/tetrad/Ui;->WARN:I

    sget v4, Lru/fokus/tetrad/Ui;->WARN_SOFT:I

    invoke-static {p0, v0, v3, v4}, Lru/fokus/tetrad/Ui;->pill(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v0

    goto/16 :goto_1

    :cond_5
    const-string v0, "\u0432\u044b\u043a\u043b\u044e\u0447\u0435\u043d\u0430"

    sget v3, Lru/fokus/tetrad/Ui;->RED:I

    sget v4, Lru/fokus/tetrad/Ui;->RED_SOFT:I

    invoke-static {p0, v0, v3, v4}, Lru/fokus/tetrad/Ui;->pill(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v0

    goto/16 :goto_1

    .line 106
    :cond_6
    const-string v0, "\u043d\u0435 \u043f\u043e\u0434\u043a\u043b\u044e\u0447\u0435\u043d\u0430"

    sget v4, Lru/fokus/tetrad/Ui;->MUTED:I

    sget v5, Lru/fokus/tetrad/Ui;->BG:I

    invoke-static {p0, v0, v4, v5}, Lru/fokus/tetrad/Ui;->pill(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v0

    goto/16 :goto_2

    .line 110
    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u0423\u0447\u0435\u043d\u0438\u043a: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ". "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    .line 111
    :cond_8
    const-string v0, "\u0412\u043e\u0439\u0434\u0438 \u0432 \u041c\u043e\u0441\u043a\u043e\u0432\u0441\u043a\u0443\u044e \u044d\u043b\u0435\u043a\u0442\u0440\u043e\u043d\u043d\u0443\u044e \u0448\u043a\u043e\u043b\u0443, \u0447\u0442\u043e\u0431\u044b \u0431\u0440\u0430\u0442\u044c \u0434\u043e\u043c\u0430\u0448\u043d\u0435\u0435 \u0437\u0430\u0434\u0430\u043d\u0438\u0435 \u0438\u0437 \u0434\u043d\u0435\u0432\u043d\u0438\u043a\u0430. \u0412\u0445\u043e\u0434 \u2014 \u043d\u0430 \u043d\u0430\u0441\u0442\u043e\u044f\u0449\u0435\u043c \u0441\u0430\u0439\u0442\u0435 mos.ru, \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u0435 \u043d\u0435 \u0432\u0438\u0434\u0438\u0442 \u043f\u0430\u0440\u043e\u043b\u044c."

    goto/16 :goto_4

    .line 112
    :cond_9
    const-string v0, "\u0412\u043e\u0439\u0442\u0438 \u0432 \u041c\u042d\u0428"

    move-object v1, v0

    goto/16 :goto_5

    :cond_a
    const/4 v0, 0x1

    goto/16 :goto_6

    .line 127
    :cond_b
    invoke-static {p0}, Lru/fokus/tetrad/GroupPicker;->summary(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sget v4, Lru/fokus/tetrad/Ui;->OK:I

    sget v5, Lru/fokus/tetrad/Ui;->OK_SOFT:I

    invoke-static {p0, v0, v4, v5}, Lru/fokus/tetrad/Ui;->pill(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v0

    goto/16 :goto_7

    .line 130
    :cond_c
    const-string v0, "\u0418\u0437\u043c\u0435\u043d\u0438\u0442\u044c \u0433\u0440\u0443\u043f\u043f\u044b"

    goto/16 :goto_8

    .line 155
    :cond_d
    invoke-virtual {v2, v3}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;)V

    .line 156
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 157
    iget-object v0, p0, Lru/fokus/tetrad/SettingsActivity;->content:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 160
    iget-object v0, p0, Lru/fokus/tetrad/SettingsActivity;->content:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lru/fokus/tetrad/SettingsActivity;->aiCard()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 163
    invoke-static {p0}, Lru/fokus/tetrad/Ui;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 164
    const/16 v0, 0xa

    invoke-static {p0, v0}, Lru/fokus/tetrad/Ui;->row(Landroid/content/Context;I)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 165
    const-string v0, "PIN \u0440\u043e\u0434\u0438\u0442\u0435\u043b\u044f"

    invoke-static {p0, v0}, Lru/fokus/tetrad/Ui;->title(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3}, Lru/fokus/tetrad/Ui;->weight(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 166
    iget-object v0, p0, Lru/fokus/tetrad/SettingsActivity;->store:Lru/fokus/tetrad/Store;

    invoke-virtual {v0}, Lru/fokus/tetrad/Store;->hasPin()Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "\u0432\u043a\u043b\u044e\u0447\u0451\u043d"

    sget v3, Lru/fokus/tetrad/Ui;->OK:I

    sget v4, Lru/fokus/tetrad/Ui;->OK_SOFT:I

    invoke-static {p0, v0, v3, v4}, Lru/fokus/tetrad/Ui;->pill(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v0

    :goto_a
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 167
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 168
    const-string v0, "\u0421 PIN \u0440\u0435\u0431\u0451\u043d\u043e\u043a \u043d\u0435 \u0441\u043c\u043e\u0436\u0435\u0442 \u0441\u0430\u043c \u0438\u0437\u043c\u0435\u043d\u0438\u0442\u044c \u043d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0438, \u0441\u043f\u0438\u0441\u043e\u043a \u0431\u043b\u043e\u043a\u0438\u0440\u043e\u0432\u043a\u0438 \u0438\u043b\u0438 \u0437\u0430\u043a\u043e\u043d\u0447\u0438\u0442\u044c \u0437\u0430\u043d\u044f\u0442\u0438\u0435 \u0440\u0430\u043d\u044c\u0448\u0435 \u0432\u0440\u0435\u043c\u0435\u043d\u0438."

    const/high16 v2, 0x41600000    # 14.0f

    sget v3, Lru/fokus/tetrad/Ui;->MUTED:I

    sget-object v4, Lru/fokus/tetrad/Ui;->BODY:Landroid/graphics/Typeface;

    invoke-static {p0, v0, v2, v3, v4}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 169
    iget-object v0, p0, Lru/fokus/tetrad/SettingsActivity;->store:Lru/fokus/tetrad/Store;

    invoke-virtual {v0}, Lru/fokus/tetrad/Store;->hasPin()Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "\u0421\u043c\u0435\u043d\u0438\u0442\u044c \u0438\u043b\u0438 \u0432\u044b\u043a\u043b\u044e\u0447\u0438\u0442\u044c PIN"

    :goto_b
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p0, v0, v2, v3}, Lru/fokus/tetrad/Ui;->button(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v0

    .line 170
    new-instance v2, Lru/fokus/tetrad/SettingsActivity$9;

    invoke-direct {v2, p0}, Lru/fokus/tetrad/SettingsActivity$9;-><init>(Lru/fokus/tetrad/SettingsActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    invoke-static {}, Lru/fokus/tetrad/Ui;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 172
    iget-object v0, p0, Lru/fokus/tetrad/SettingsActivity;->content:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 174
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_e

    const-string v0, "android.permission.POST_NOTIFICATIONS"

    invoke-virtual {p0, v0}, Lru/fokus/tetrad/SettingsActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_e

    .line 175
    const-string v0, "\u0420\u0430\u0437\u0440\u0435\u0448\u0438\u0442\u044c \u0443\u0432\u0435\u0434\u043e\u043c\u043b\u0435\u043d\u0438\u044f \u043e \u043a\u043e\u043d\u0446\u0435 \u0437\u0430\u043d\u044f\u0442\u0438\u044f"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lru/fokus/tetrad/Ui;->button(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v0

    .line 176
    new-instance v1, Lru/fokus/tetrad/SettingsActivity$10;

    invoke-direct {v1, p0}, Lru/fokus/tetrad/SettingsActivity$10;-><init>(Lru/fokus/tetrad/SettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    iget-object v1, p0, Lru/fokus/tetrad/SettingsActivity;->content:Landroid/widget/LinearLayout;

    invoke-static {}, Lru/fokus/tetrad/Ui;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 182
    :cond_e
    const-string v0, "\u0418\u043d\u0441\u0442\u0440\u0443\u043a\u0446\u0438\u044f: \u0418\u0418, \u041c\u042d\u0428, \u0440\u0430\u0441\u043f\u0438\u0441\u0430\u043d\u0438\u0435, \u0431\u043b\u043e\u043a\u0438\u0440\u043e\u0432\u043a\u0430"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lru/fokus/tetrad/Ui;->button(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v0

    .line 183
    new-instance v1, Lru/fokus/tetrad/SettingsActivity$11;

    invoke-direct {v1, p0}, Lru/fokus/tetrad/SettingsActivity$11;-><init>(Lru/fokus/tetrad/SettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    iget-object v1, p0, Lru/fokus/tetrad/SettingsActivity;->content:Landroid/widget/LinearLayout;

    invoke-static {}, Lru/fokus/tetrad/Ui;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 188
    const-string v0, "2.0"

    .line 189
    :try_start_0
    invoke-virtual {p0}, Lru/fokus/tetrad/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Lru/fokus/tetrad/SettingsActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v0, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    :goto_c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u0424\u043e\u043a\u0443\u0441-\u0442\u0435\u0442\u0440\u0430\u0434\u044c "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u00b7 \u0448\u0440\u0438\u0444\u0442\u044b Golos Text, Unbounded, Caveat \u2014 SIL Open Font License"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x41400000    # 12.0f

    sget v2, Lru/fokus/tetrad/Ui;->MUTED:I

    sget-object v3, Lru/fokus/tetrad/Ui;->BODY:Landroid/graphics/Typeface;

    invoke-static {p0, v0, v1, v2, v3}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v0

    .line 191
    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v1}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v1

    const/4 v2, 0x0

    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {v3}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 192
    iget-object v1, p0, Lru/fokus/tetrad/SettingsActivity;->content:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 193
    return-void

    .line 166
    :cond_f
    const-string v0, "\u0432\u044b\u043a\u043b\u044e\u0447\u0435\u043d"

    sget v3, Lru/fokus/tetrad/Ui;->MUTED:I

    sget v4, Lru/fokus/tetrad/Ui;->BG:I

    invoke-static {p0, v0, v3, v4}, Lru/fokus/tetrad/Ui;->pill(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v0

    goto/16 :goto_a

    .line 169
    :cond_10
    const-string v0, "\u0417\u0430\u0434\u0430\u0442\u044c PIN"

    goto/16 :goto_b

    .line 189
    :catch_0
    move-exception v1

    goto :goto_c
.end method

.method private secretField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lru/fokus/tetrad/SettingsActivity$Save;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 310
    invoke-static {p0, p2, v4}, Lru/fokus/tetrad/Ui;->edit(Landroid/content/Context;Ljava/lang/String;Z)Landroid/widget/EditText;

    move-result-object v0

    .line 311
    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 312
    sget-object v1, Lru/fokus/tetrad/Ui;->BODY:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 313
    invoke-virtual {v0, p3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 314
    new-instance v1, Lru/fokus/tetrad/SettingsActivity$25;

    invoke-direct {v1, p0, p4}, Lru/fokus/tetrad/SettingsActivity$25;-><init>(Lru/fokus/tetrad/SettingsActivity;Lru/fokus/tetrad/SettingsActivity$Save;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 315
    const/16 v1, 0x8

    invoke-static {p0, v1}, Lru/fokus/tetrad/Ui;->row(Landroid/content/Context;I)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 316
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2}, Lru/fokus/tetrad/Ui;->weight(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 317
    const-string v2, "\u041f\u043e\u043a\u0430\u0437\u0430\u0442\u044c"

    const/4 v3, 0x1

    invoke-static {p0, v2, v3, v4}, Lru/fokus/tetrad/Ui;->button(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v2

    .line 318
    new-instance v3, Lru/fokus/tetrad/SettingsActivity$26;

    invoke-direct {v3, p0, v0, v2}, Lru/fokus/tetrad/SettingsActivity$26;-><init>(Lru/fokus/tetrad/SettingsActivity;Landroid/widget/EditText;Landroid/widget/TextView;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 326
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 327
    invoke-direct {p0, p1, v1}, Lru/fokus/tetrad/SettingsActivity;->field(Ljava/lang/String;Landroid/view/View;)Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method private step(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;
    .locals 7

    .prologue
    const/high16 v6, 0x41c00000    # 24.0f

    .line 350
    const/16 v0, 0xa

    invoke-static {p0, v0}, Lru/fokus/tetrad/Ui;->row(Landroid/content/Context;I)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 351
    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 352
    const/high16 v1, 0x41500000    # 13.0f

    sget v2, Lru/fokus/tetrad/Ui;->INK:I

    sget-object v3, Lru/fokus/tetrad/Ui;->BOLD:Landroid/graphics/Typeface;

    invoke-static {p0, p1, v1, v2, v3}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v1

    .line 353
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 354
    sget v2, Lru/fokus/tetrad/Ui;->INK_SOFT:I

    const v3, 0x4479c000    # 999.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Lru/fokus/tetrad/Ui;->round(IFIF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 355
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {v6}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v3

    invoke-static {v6}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 356
    const/high16 v1, 0x41600000    # 14.0f

    sget v2, Lru/fokus/tetrad/Ui;->FG:I

    sget-object v3, Lru/fokus/tetrad/Ui;->BODY:Landroid/graphics/Typeface;

    invoke-static {p0, p2, v1, v2, v3}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2}, Lru/fokus/tetrad/Ui;->weight(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 357
    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lru/fokus/tetrad/Ui;->applyTheme(Landroid/app/Activity;Z)V

    .line 29
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    sget v0, Lru/fokus/tetrad/Ui;->BG:I

    sget-boolean v1, Lru/fokus/tetrad/Ui;->night:Z

    invoke-static {p0, v0, v1}, Lru/fokus/tetrad/Ui;->paintBars(Landroid/app/Activity;IZ)V

    .line 31
    new-instance v0, Lru/fokus/tetrad/Store;

    invoke-direct {v0, p0}, Lru/fokus/tetrad/Store;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lru/fokus/tetrad/SettingsActivity;->store:Lru/fokus/tetrad/Store;

    .line 32
    invoke-static {p0}, Lru/fokus/tetrad/Ui;->screen(Landroid/app/Activity;)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lru/fokus/tetrad/SettingsActivity;->content:Landroid/widget/LinearLayout;

    .line 33
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    .prologue
    .line 195
    invoke-direct {p0}, Lru/fokus/tetrad/SettingsActivity;->render()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 36
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 37
    invoke-direct {p0}, Lru/fokus/tetrad/SettingsActivity;->render()V

    .line 38
    return-void
.end method
