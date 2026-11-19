.class public final Lru/fokus/tetrad/Photos;
.super Ljava/lang/Object;
.source "Photos.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/fokus/tetrad/Photos$Done;,
        Lru/fokus/tetrad/Photos$Remove;
    }
.end annotation


# static fields
.field static final PREF_PENDING:Ljava/lang/String; = "pendingCamera"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addMore(Landroid/app/Activity;Ljava/lang/String;II)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    .line 175
    const/16 v0, 0xa

    invoke-static {p0, v0}, Lru/fokus/tetrad/Ui;->row(Landroid/content/Context;I)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 176
    invoke-static {p0, p1, v5, v3}, Lru/fokus/tetrad/Ui;->button(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v1

    .line 177
    new-instance v2, Lru/fokus/tetrad/Photos$8;

    invoke-direct {v2, p0, p2}, Lru/fokus/tetrad/Photos$8;-><init>(Landroid/app/Activity;I)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    const-string v2, "\u0413\u0430\u043b\u0435\u0440\u0435\u044f"

    invoke-static {p0, v2, v5, v3}, Lru/fokus/tetrad/Ui;->button(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v2

    .line 179
    new-instance v3, Lru/fokus/tetrad/Photos$9;

    invoke-direct {v3, p0, p3}, Lru/fokus/tetrad/Photos$9;-><init>(Landroid/app/Activity;I)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    invoke-static {v4}, Lru/fokus/tetrad/Ui;->weight(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 181
    invoke-static {v4}, Lru/fokus/tetrad/Ui;->weight(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 182
    return-object v0
.end method

.method public static camera(Landroid/app/Activity;I)V
    .locals 6

    .prologue
    .line 36
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lru/fokus/tetrad/PhotoProvider;->dir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cam_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 37
    new-instance v1, Lru/fokus/tetrad/Store;

    invoke-direct {v1, p0}, Lru/fokus/tetrad/Store;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lru/fokus/tetrad/Store;->prefs()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "pendingCamera"

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 38
    invoke-static {v0}, Lru/fokus/tetrad/PhotoProvider;->uriFor(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 39
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 40
    const-string v2, "output"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 41
    const-string v2, "photo"

    invoke-static {v2, v0}, Landroid/content/ClipData;->newRawUri(Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    .line 42
    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 43
    :try_start_0
    invoke-virtual {p0, v1, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    :goto_0
    return-void

    .line 44
    :catch_0
    move-exception v0

    const-string v0, "\u041d\u0435 \u043d\u0430\u0439\u0434\u0435\u043d\u043e \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u0435 \u043a\u0430\u043c\u0435\u0440\u044b. \u0412\u044b\u0431\u0435\u0440\u0438 \u0444\u043e\u0442\u043e \u0438\u0437 \u0433\u0430\u043b\u0435\u0440\u0435\u0438."

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public static dropZone(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;II)Landroid/widget/LinearLayout;
    .locals 9

    .prologue
    const/16 v8, 0x11

    const/4 v7, 0x1

    const/high16 v6, 0x42400000    # 48.0f

    const/high16 v5, 0x41800000    # 16.0f

    .line 152
    const/16 v0, 0x8

    invoke-static {p0, v0}, Lru/fokus/tetrad/Ui;->col(Landroid/content/Context;I)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 153
    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 154
    invoke-static {v5}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v1

    const/high16 v2, 0x41c00000    # 24.0f

    invoke-static {v2}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v2

    invoke-static {v5}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v3

    const/high16 v4, 0x41900000    # 18.0f

    invoke-static {v4}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 155
    sget v1, Lru/fokus/tetrad/Ui;->INK_SOFT:I

    sget v2, Lru/fokus/tetrad/Ui;->INK:I

    invoke-static {v1, v5, v2}, Lru/fokus/tetrad/Ui;->dashed(IFI)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    const v2, 0x22808080

    invoke-static {v1, v2, v5}, Lru/fokus/tetrad/Ui;->ripple(Landroid/graphics/drawable/Drawable;IF)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 156
    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 157
    new-instance v1, Lru/fokus/tetrad/Photos$6;

    invoke-direct {v1, p0, p3}, Lru/fokus/tetrad/Photos$6;-><init>(Landroid/app/Activity;I)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    new-instance v1, Lru/fokus/tetrad/Ui$CameraIcon;

    sget v2, Lru/fokus/tetrad/Ui;->INK:I

    invoke-direct {v1, p0, v2}, Lru/fokus/tetrad/Ui$CameraIcon;-><init>(Landroid/content/Context;I)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {v6}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v3

    invoke-static {v6}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 159
    const/high16 v1, 0x41880000    # 17.0f

    sget v2, Lru/fokus/tetrad/Ui;->INK:I

    sget-object v3, Lru/fokus/tetrad/Ui;->BOLD:Landroid/graphics/Typeface;

    invoke-static {p0, p1, v1, v2, v3}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v1

    .line 160
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 161
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 162
    if-eqz p2, :cond_0

    .line 163
    const/high16 v1, 0x41600000    # 14.0f

    sget v2, Lru/fokus/tetrad/Ui;->MUTED:I

    sget-object v3, Lru/fokus/tetrad/Ui;->BODY:Landroid/graphics/Typeface;

    invoke-static {p0, p2, v1, v2, v3}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v1

    .line 164
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 165
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 167
    :cond_0
    const-string v1, "\u0438\u043b\u0438 \u0432\u044b\u0431\u0440\u0430\u0442\u044c \u0438\u0437 \u0433\u0430\u043b\u0435\u0440\u0435\u0438"

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-static {p0, v1, v2, v3}, Lru/fokus/tetrad/Ui;->button(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v1

    .line 168
    new-instance v2, Lru/fokus/tetrad/Photos$7;

    invoke-direct {v2, p0, p4}, Lru/fokus/tetrad/Photos$7;-><init>(Landroid/app/Activity;I)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    invoke-static {}, Lru/fokus/tetrad/Ui;->wrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 170
    return-object v0
.end method

.method public static gallery(Landroid/app/Activity;I)V
    .locals 3

    .prologue
    .line 48
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 49
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 50
    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    const-string v1, "android.intent.extra.ALLOW_MULTIPLE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 52
    :try_start_0
    const-string v1, "\u0412\u044b\u0431\u0435\u0440\u0438 \u0444\u043e\u0442\u043e"

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    :goto_0
    return-void

    .line 53
    :catch_0
    move-exception v0

    const-string v0, "\u041d\u0435 \u043d\u0430\u0439\u0434\u0435\u043d\u043e \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u0435 \u0433\u0430\u043b\u0435\u0440\u0435\u0438"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public static handle(Landroid/app/Activity;ZILandroid/content/Intent;ILru/fokus/tetrad/Photos$Done;)V
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v5, -0x1

    .line 58
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 60
    if-eqz p1, :cond_5

    .line 61
    new-instance v0, Lru/fokus/tetrad/Store;

    invoke-direct {v0, p0}, Lru/fokus/tetrad/Store;-><init>(Landroid/content/Context;)V

    .line 62
    invoke-virtual {v0}, Lru/fokus/tetrad/Store;->prefs()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "pendingCamera"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 63
    invoke-virtual {v0}, Lru/fokus/tetrad/Store;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "pendingCamera"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 64
    if-eqz v2, :cond_0

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 65
    :cond_0
    if-ne p2, v5, :cond_1

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v6, 0x0

    cmp-long v0, v2, v6

    if-nez v0, :cond_3

    .line 66
    :cond_1
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 91
    :cond_2
    :goto_0
    return-void

    .line 69
    :cond_3
    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    :cond_4
    :goto_1
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lru/fokus/tetrad/Photos$1;

    move v2, p4

    move-object v3, p0

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lru/fokus/tetrad/Photos$1;-><init>(Ljava/util/List;ILandroid/app/Activity;Ljava/io/File;Lru/fokus/tetrad/Photos$Done;)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 90
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 71
    :cond_5
    if-ne p2, v5, :cond_2

    if-eqz p3, :cond_2

    .line 72
    invoke-virtual {p3}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 73
    invoke-virtual {p3}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v2

    .line 74
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v2}, Landroid/content/ClipData;->getItemCount()I

    move-result v3

    if-ge v0, v3, :cond_4

    invoke-virtual {v2, v0}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 75
    :cond_6
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public static strip(Landroid/app/Activity;Ljava/util/List;ILru/fokus/tetrad/Photos$Remove;)Landroid/view/View;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;I",
            "Lru/fokus/tetrad/Photos$Remove;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 97
    new-instance v1, Landroid/widget/HorizontalScrollView;

    invoke-direct {v1, p0}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 98
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/HorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 99
    const/16 v0, 0xa

    invoke-static {p0, v0}, Lru/fokus/tetrad/Ui;->row(Landroid/content/Context;I)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 101
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 102
    new-instance v5, Landroid/widget/ImageView;

    invoke-direct {v5, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 103
    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 104
    int-to-float v6, p2

    invoke-static {v6}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v6

    invoke-static {v0, v6}, Lru/fokus/tetrad/AiClient;->thumb(Ljava/io/File;I)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 105
    if-eqz v6, :cond_0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 106
    :cond_0
    sget v6, Lru/fokus/tetrad/Ui;->LINE:I

    const/high16 v7, 0x41400000    # 12.0f

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v6, v7, v8, v9}, Lru/fokus/tetrad/Ui;->round(IFIF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 107
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setClipToOutline(Z)V

    .line 108
    new-instance v6, Lru/fokus/tetrad/Photos$2;

    invoke-direct {v6, p0, v0}, Lru/fokus/tetrad/Photos$2;-><init>(Landroid/app/Activity;Ljava/io/File;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-direct {v6, v7, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 110
    if-eqz p3, :cond_1

    .line 111
    const-string v5, "\u2715"

    const/high16 v6, 0x41600000    # 14.0f

    const/4 v7, -0x1

    sget-object v8, Lru/fokus/tetrad/Ui;->BOLD:Landroid/graphics/Typeface;

    invoke-static {p0, v5, v6, v7, v8}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v5

    .line 112
    const/16 v6, 0x11

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 113
    const/high16 v6, -0x50000000

    const v7, 0x4479c000    # 999.0f

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v6, v7, v8, v9}, Lru/fokus/tetrad/Ui;->round(IFIF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 114
    const-string v6, "\u0423\u0431\u0440\u0430\u0442\u044c \u0444\u043e\u0442\u043e"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 115
    new-instance v6, Lru/fokus/tetrad/Photos$3;

    invoke-direct {v6, p3, v0}, Lru/fokus/tetrad/Photos$3;-><init>(Lru/fokus/tetrad/Photos$Remove;Ljava/io/File;)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v6, 0x41e00000    # 28.0f

    invoke-static {v6}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v6

    const/high16 v7, 0x41e00000    # 28.0f

    invoke-static {v7}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v7

    const v8, 0x800035

    invoke-direct {v0, v6, v7, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 117
    const/4 v6, 0x0

    const/high16 v7, 0x40c00000    # 6.0f

    invoke-static {v7}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v7

    const/high16 v8, 0x40c00000    # 6.0f

    invoke-static {v8}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 118
    invoke-virtual {v4, v5, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 120
    :cond_1
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    int-to-float v5, p2

    invoke-static {v5}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v5

    int-to-float v6, p2

    invoke-static {v6}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v6

    invoke-direct {v0, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 122
    :cond_2
    invoke-virtual {v1, v2}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;)V

    .line 123
    return-object v1
.end method

.method public static view(Landroid/app/Activity;Ljava/io/File;)V
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v8, -0x2

    const/4 v7, -0x1

    .line 128
    new-instance v0, Landroid/app/Dialog;

    const v1, 0x103000a

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 129
    invoke-virtual {v0, v4}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 130
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 131
    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 132
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 133
    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 134
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 135
    iput v4, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 136
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 137
    if-eqz v3, :cond_0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 138
    :cond_0
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 139
    const-string v3, "\u041d\u0430\u0436\u043c\u0438, \u0447\u0442\u043e\u0431\u044b \u0437\u0430\u043a\u0440\u044b\u0442\u044c"

    const/high16 v4, 0x41600000    # 14.0f

    const v5, -0x33000001    # -1.3421772E8f

    sget-object v6, Lru/fokus/tetrad/Ui;->MEDIUM:Landroid/graphics/Typeface;

    invoke-static {p0, v3, v4, v5, v6}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v3

    .line 140
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v5, 0x51

    invoke-direct {v4, v8, v8, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 141
    const/high16 v5, 0x42000000    # 32.0f

    invoke-static {v5}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v5

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 142
    invoke-virtual {v1, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 143
    new-instance v3, Lru/fokus/tetrad/Photos$4;

    invoke-direct {v3, v0}, Lru/fokus/tetrad/Photos$4;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    new-instance v3, Lru/fokus/tetrad/Photos$5;

    invoke-direct {v3, v0}, Lru/fokus/tetrad/Photos$5;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 146
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v7, v7}, Landroid/view/Window;->setLayout(II)V

    .line 147
    :cond_1
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 148
    return-void
.end method
