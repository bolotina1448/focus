.class public Lru/fokus/tetrad/HistoryActivity;
.super Landroid/app/Activity;
.source "HistoryActivity.java"


# instance fields
.field private content:Landroid/widget/LinearLayout;

.field private store:Lru/fokus/tetrad/Store;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lru/fokus/tetrad/HistoryActivity;)Lru/fokus/tetrad/Store;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lru/fokus/tetrad/HistoryActivity;->store:Lru/fokus/tetrad/Store;

    return-object v0
.end method

.method static synthetic access$100(Lru/fokus/tetrad/HistoryActivity;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lru/fokus/tetrad/HistoryActivity;->render()V

    return-void
.end method

.method private render()V
    .locals 14

    .prologue
    .line 35
    iget-object v0, p0, Lru/fokus/tetrad/HistoryActivity;->content:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 36
    iget-object v0, p0, Lru/fokus/tetrad/HistoryActivity;->content:Landroid/widget/LinearLayout;

    const-string v1, "\u0418\u0441\u0442\u043e\u0440\u0438\u044f"

    invoke-static {p0, v1}, Lru/fokus/tetrad/Ui;->header(Landroid/app/Activity;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 37
    iget-object v0, p0, Lru/fokus/tetrad/HistoryActivity;->store:Lru/fokus/tetrad/Store;

    invoke-virtual {v0}, Lru/fokus/tetrad/Store;->history()Lorg/json/JSONArray;

    move-result-object v6

    .line 38
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 39
    const-wide/16 v2, 0x0

    .line 40
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v0, v7, :cond_3

    .line 41
    invoke-virtual {v6, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 42
    if-nez v7, :cond_1

    .line 40
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 43
    :cond_1
    const-string v8, "done"

    const-string v9, "outcome"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    add-int/lit8 v5, v5, 0x1

    .line 44
    :cond_2
    const-string v8, "elapsed"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v8

    add-long/2addr v2, v8

    .line 45
    const-string v8, "mark"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    add-int/lit8 v4, v4, 0x1

    const-string v8, "mark"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    add-int/2addr v1, v7

    goto :goto_1

    .line 47
    :cond_3
    const/16 v0, 0xa

    invoke-static {p0, v0}, Lru/fokus/tetrad/Ui;->row(Landroid/content/Context;I)Landroid/widget/LinearLayout;

    move-result-object v7

    .line 48
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    int-to-long v8, v5

    const-string v5, "\u0437\u0430\u043d\u044f\u0442\u0438\u0435"

    const-string v10, "\u0437\u0430\u043d\u044f\u0442\u0438\u044f"

    const-string v11, "\u0437\u0430\u043d\u044f\u0442\u0438\u0439"

    invoke-static {v8, v9, v5, v10, v11}, Lru/fokus/tetrad/Ui;->plural(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v0, v5}, Lru/fokus/tetrad/HistoryActivity;->tile(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v5}, Lru/fokus/tetrad/Ui;->weight(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v7, v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 49
    const-wide/32 v8, 0xea60

    div-long/2addr v2, v8

    .line 50
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v5, "\u043c\u0438\u043d\u0443\u0442\u0430"

    const-string v8, "\u043c\u0438\u043d\u0443\u0442\u044b"

    const-string v9, "\u043c\u0438\u043d\u0443\u0442"

    invoke-static {v2, v3, v5, v8, v9}, Lru/fokus/tetrad/Ui;->plural(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lru/fokus/tetrad/HistoryActivity;->tile(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2}, Lru/fokus/tetrad/Ui;->weight(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v7, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 51
    if-nez v4, :cond_4

    const-string v0, "\u2014"

    :goto_2
    const-string v1, "\u0441\u0440\u0435\u0434\u043d\u044f\u044f \u043e\u0446\u0435\u043d\u043a\u0430"

    invoke-direct {p0, v0, v1}, Lru/fokus/tetrad/HistoryActivity;->tile(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Lru/fokus/tetrad/Ui;->weight(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 52
    iget-object v0, p0, Lru/fokus/tetrad/HistoryActivity;->content:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 54
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_5

    .line 55
    invoke-static {p0}, Lru/fokus/tetrad/Ui;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 56
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 57
    const-string v1, "\u041f\u043e\u043a\u0430 \u043f\u0443\u0441\u0442\u043e. \u0417\u0434\u0435\u0441\u044c \u043f\u043e\u044f\u0432\u044f\u0442\u0441\u044f \u0437\u0430\u043d\u044f\u0442\u0438\u044f, \u043f\u043e\u043f\u044b\u0442\u043a\u0438 \u043e\u0442\u0432\u043b\u0435\u0447\u044c\u0441\u044f \u0438 \u043e\u0446\u0435\u043d\u043a\u0438."

    const/high16 v2, 0x41700000    # 15.0f

    sget v3, Lru/fokus/tetrad/Ui;->MUTED:I

    sget-object v4, Lru/fokus/tetrad/Ui;->BODY:Landroid/graphics/Typeface;

    invoke-static {p0, v1, v2, v3, v4}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v1

    .line 58
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 59
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 60
    iget-object v1, p0, Lru/fokus/tetrad/HistoryActivity;->content:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 113
    :goto_3
    return-void

    .line 51
    :cond_4
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%.1f"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    int-to-double v8, v1

    int-to-double v10, v4

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    aput-object v1, v3, v5

    invoke-static {v0, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    const/16 v2, 0x2c

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 64
    :cond_5
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v0, "d MMMM, HH:mm"

    new-instance v1, Ljava/util/Locale;

    const-string v3, "ru"

    invoke-direct {v1, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 65
    invoke-static {p0}, Lru/fokus/tetrad/Ui;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 66
    sget v0, Lru/fokus/tetrad/Ui;->LINE:I

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v0, v1, v4, v5}, Lru/fokus/tetrad/Ui;->round(IFIF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 67
    const/4 v0, 0x2

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setShowDividers(I)V

    .line 68
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setDividerPadding(I)V

    .line 69
    const/4 v0, 0x0

    :goto_4
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_d

    .line 70
    invoke-virtual {v6, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 71
    if-nez v4, :cond_6

    .line 69
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 72
    :cond_6
    const/16 v1, 0xc

    invoke-static {p0, v1}, Lru/fokus/tetrad/Ui;->row(Landroid/content/Context;I)Landroid/widget/LinearLayout;

    move-result-object v5

    .line 73
    const/4 v1, 0x0

    const/high16 v7, 0x41200000    # 10.0f

    invoke-static {v7}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v7

    const/4 v8, 0x0

    const/high16 v9, 0x41200000    # 10.0f

    invoke-static {v9}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v9

    invoke-virtual {v5, v1, v7, v8, v9}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 74
    const/4 v1, 0x2

    invoke-static {p0, v1}, Lru/fokus/tetrad/Ui;->col(Landroid/content/Context;I)Landroid/widget/LinearLayout;

    move-result-object v7

    .line 75
    const-string v1, "subject"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 76
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_7

    const-string v1, "\u0417\u0430\u043d\u044f\u0442\u0438\u0435"

    :cond_7
    const/high16 v8, 0x41800000    # 16.0f

    sget v9, Lru/fokus/tetrad/Ui;->FG:I

    sget-object v10, Lru/fokus/tetrad/Ui;->BOLD:Landroid/graphics/Typeface;

    invoke-static {p0, v1, v8, v9, v10}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 77
    const-string v1, "elapsed"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v8

    const-wide/32 v10, 0xea60

    div-long/2addr v8, v10

    .line 78
    const-string v1, "attempts"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 79
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v11, Ljava/util/Date;

    const-string v12, "date"

    invoke-virtual {v4, v12}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v12

    invoke-direct {v11, v12, v13}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " \u00b7 "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " \u043c\u0438\u043d"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 80
    if-lez v1, :cond_8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " \u00b7 "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    int-to-long v10, v1

    const-string v1, "\u043f\u043e\u043f\u044b\u0442\u043a\u0430"

    const-string v12, "\u043f\u043e\u043f\u044b\u0442\u043a\u0438"

    const-string v13, "\u043f\u043e\u043f\u044b\u0442\u043e\u043a"

    invoke-static {v10, v11, v1, v12, v13}, Lru/fokus/tetrad/Ui;->plural(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, " \u043e\u0442\u0432\u043b\u0435\u0447\u044c\u0441\u044f"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_6
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/high16 v8, 0x41500000    # 13.0f

    sget v9, Lru/fokus/tetrad/Ui;->MUTED:I

    sget-object v10, Lru/fokus/tetrad/Ui;->BODY:Landroid/graphics/Typeface;

    .line 79
    invoke-static {p0, v1, v8, v9, v10}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v1

    .line 81
    sget-object v8, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 82
    invoke-virtual {v7, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 83
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Lru/fokus/tetrad/Ui;->weight(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v5, v7, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 84
    const-string v1, "done"

    const-string v7, "outcome"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 85
    const-string v7, "mark"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 86
    const-string v1, "mark"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    .line 87
    const/4 v1, 0x4

    if-lt v4, v1, :cond_9

    sget v1, Lru/fokus/tetrad/Ui;->OK:I

    .line 88
    :goto_7
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/high16 v7, 0x41d00000    # 26.0f

    sget-object v8, Lru/fokus/tetrad/Ui;->HAND:Landroid/graphics/Typeface;

    invoke-static {p0, v4, v7, v1, v8}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v1

    .line 89
    const/16 v4, 0x11

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 90
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v7, 0x42000000    # 32.0f

    invoke-static {v7}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v7

    const/4 v8, -0x2

    invoke-direct {v4, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    :goto_8
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_5

    .line 80
    :cond_8
    const-string v1, ""

    goto :goto_6

    .line 87
    :cond_9
    const/4 v1, 0x3

    if-ne v4, v1, :cond_a

    sget v1, Lru/fokus/tetrad/Ui;->WARN:I

    goto :goto_7

    :cond_a
    sget v1, Lru/fokus/tetrad/Ui;->RED:I

    goto :goto_7

    .line 92
    :cond_b
    if-eqz v1, :cond_c

    const-string v1, "\u0441\u0434\u0435\u043b\u0430\u043d\u043e"

    sget v4, Lru/fokus/tetrad/Ui;->OK:I

    sget v7, Lru/fokus/tetrad/Ui;->OK_SOFT:I

    invoke-static {p0, v1, v4, v7}, Lru/fokus/tetrad/Ui;->pill(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v1

    :goto_9
    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_8

    :cond_c
    const-string v1, "\u0431\u0440\u043e\u0448\u0435\u043d\u043e"

    sget v4, Lru/fokus/tetrad/Ui;->RED:I

    sget v7, Lru/fokus/tetrad/Ui;->RED_SOFT:I

    invoke-static {p0, v1, v4, v7}, Lru/fokus/tetrad/Ui;->pill(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v1

    goto :goto_9

    .line 97
    :cond_d
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 98
    sget v1, Lru/fokus/tetrad/Ui;->LINE:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 99
    const/4 v1, 0x1

    const/4 v2, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v4}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    .line 100
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 101
    iget-object v0, p0, Lru/fokus/tetrad/HistoryActivity;->content:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 103
    const-string v0, "\u041e\u0447\u0438\u0441\u0442\u0438\u0442\u044c \u0438\u0441\u0442\u043e\u0440\u0438\u044e"

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lru/fokus/tetrad/Ui;->button(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v0

    .line 104
    new-instance v1, Lru/fokus/tetrad/HistoryActivity$1;

    invoke-direct {v1, p0}, Lru/fokus/tetrad/HistoryActivity$1;-><init>(Lru/fokus/tetrad/HistoryActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    iget-object v1, p0, Lru/fokus/tetrad/HistoryActivity;->content:Landroid/widget/LinearLayout;

    invoke-static {}, Lru/fokus/tetrad/Ui;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_3
.end method

.method private tile(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;
    .locals 6

    .prologue
    const/high16 v3, 0x41600000    # 14.0f

    const/high16 v5, 0x41400000    # 12.0f

    .line 116
    invoke-static {p0}, Lru/fokus/tetrad/Ui;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 117
    invoke-static {v3}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v1

    invoke-static {v5}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v2

    invoke-static {v3}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v3

    invoke-static {v5}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 118
    const/4 v1, 0x2

    invoke-static {v1}, Lru/fokus/tetrad/Ui;->gap(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 119
    const/high16 v1, 0x41b00000    # 22.0f

    sget v2, Lru/fokus/tetrad/Ui;->FG:I

    sget-object v3, Lru/fokus/tetrad/Ui;->DISPLAY:Landroid/graphics/Typeface;

    invoke-static {p0, p1, v1, v2, v3}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v1

    .line 120
    const-string v2, "tnum"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setFontFeatureSettings(Ljava/lang/String;)V

    .line 121
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 122
    sget v1, Lru/fokus/tetrad/Ui;->MUTED:I

    sget-object v2, Lru/fokus/tetrad/Ui;->BODY:Landroid/graphics/Typeface;

    invoke-static {p0, p2, v5, v1, v2}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 123
    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lru/fokus/tetrad/Ui;->applyTheme(Landroid/app/Activity;Z)V

    .line 27
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    sget v0, Lru/fokus/tetrad/Ui;->BG:I

    sget-boolean v1, Lru/fokus/tetrad/Ui;->night:Z

    invoke-static {p0, v0, v1}, Lru/fokus/tetrad/Ui;->paintBars(Landroid/app/Activity;IZ)V

    .line 29
    new-instance v0, Lru/fokus/tetrad/Store;

    invoke-direct {v0, p0}, Lru/fokus/tetrad/Store;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lru/fokus/tetrad/HistoryActivity;->store:Lru/fokus/tetrad/Store;

    .line 30
    invoke-static {p0}, Lru/fokus/tetrad/Ui;->screen(Landroid/app/Activity;)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lru/fokus/tetrad/HistoryActivity;->content:Landroid/widget/LinearLayout;

    .line 31
    invoke-direct {p0}, Lru/fokus/tetrad/HistoryActivity;->render()V

    .line 32
    return-void
.end method
