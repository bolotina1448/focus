.class public final Lru/fokus/tetrad/Ui;
.super Ljava/lang/Object;
.source "Ui.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/fokus/tetrad/Ui$Blank;,
        Lru/fokus/tetrad/Ui$Progress;,
        Lru/fokus/tetrad/Ui$CameraIcon;
    }
.end annotation


# static fields
.field public static BG:I = 0x0

.field public static BODY:Landroid/graphics/Typeface; = null

.field public static BOLD:Landroid/graphics/Typeface; = null

.field public static CARD:I = 0x0

.field public static final DANGER:I = 0x2

.field public static DISPLAY:Landroid/graphics/Typeface; = null

.field public static FG:I = 0x0

.field public static final GHOST:I = 0x3

.field public static HAND:Landroid/graphics/Typeface; = null

.field public static INK:I = 0x0

.field public static INK_SOFT:I = 0x0

.field public static LINE:I = 0x0

.field public static MEDIUM:Landroid/graphics/Typeface; = null

.field public static MUTED:I = 0x0

.field public static final NIGHT:I = -0xf1ebd0

.field public static final NIGHT2:I = -0xe5ddb0

.field public static final NIGHT_ACCENT:I = -0x715a01

.field public static final NIGHT_BLUE_BG:I = -0xeccfa6

.field public static final NIGHT_FG:I = -0x110e01

.field public static final NIGHT_GHOST:I = 0x6

.field public static final NIGHT_MUTED:I = -0x5c532a

.field public static final NIGHT_PRIMARY:I = 0x4

.field public static final NIGHT_RED:I = -0x8586

.field public static final NIGHT_RED_BG:I = -0xc5eae0

.field public static final NIGHT_SECONDARY:I = 0x5

.field public static OK:I = 0x0

.field public static OK_SOFT:I = 0x0

.field public static ON_INK:I = 0x0

.field public static final PRIMARY:I = 0x0

.field public static RED:I = 0x0

.field public static RED_SOFT:I = 0x0

.field public static final SECONDARY:I = 0x1

.field public static WARN:I

.field public static WARN_SOFT:I

.field public static density:F

.field public static night:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lru/fokus/tetrad/Ui;->density:F

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyTheme(Landroid/app/Activity;Z)V
    .locals 1

    .prologue
    .line 69
    invoke-static {p0}, Lru/fokus/tetrad/Ui;->init(Landroid/content/Context;)V

    .line 70
    if-nez p1, :cond_0

    sget-boolean v0, Lru/fokus/tetrad/Ui;->night:Z

    if-eqz v0, :cond_1

    :cond_0
    const v0, 0x103022e

    :goto_0
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTheme(I)V

    .line 71
    return-void

    .line 70
    :cond_1
    const v0, 0x1030241

    goto :goto_0
.end method

.method public static button(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/widget/TextView;
    .locals 10

    .prologue
    const v5, -0x715a01

    const v6, -0xe5ddb0

    const v2, 0x33ffffff

    const/high16 v1, 0x41800000    # 16.0f

    const/4 v4, 0x0

    .line 128
    if-eqz p3, :cond_0

    const/high16 v0, 0x41880000    # 17.0f

    :goto_0
    sget v3, Lru/fokus/tetrad/Ui;->FG:I

    sget-object v7, Lru/fokus/tetrad/Ui;->BOLD:Landroid/graphics/Typeface;

    invoke-static {p0, p1, v0, v3, v7}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v9

    .line 129
    const/16 v0, 0x11

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 130
    if-eqz p3, :cond_1

    const/high16 v0, 0x41b00000    # 22.0f

    :goto_1
    invoke-static {v0}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v3

    if-eqz p3, :cond_2

    move v0, v1

    :goto_2
    invoke-static {v0}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v0

    .line 131
    invoke-virtual {v9, v3, v0, v3, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 132
    if-eqz p3, :cond_3

    const/high16 v0, 0x42680000    # 58.0f

    :goto_3
    invoke-static {v0}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v0

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 133
    if-eqz p3, :cond_4

    move v8, v1

    .line 136
    :goto_4
    packed-switch p2, :pswitch_data_0

    .line 143
    :pswitch_0
    sget v4, Lru/fokus/tetrad/Ui;->INK_SOFT:I

    sget v2, Lru/fokus/tetrad/Ui;->INK_SOFT:I

    sget v1, Lru/fokus/tetrad/Ui;->INK:I

    const v0, 0x22808080

    move v3, v2

    move v7, v4

    .line 145
    :goto_5
    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 146
    const/4 v1, 0x0

    invoke-static {v7, v8, v3, v1}, Lru/fokus/tetrad/Ui;->round(IFIF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-static {v1, v0, v8}, Lru/fokus/tetrad/Ui;->ripple(Landroid/graphics/drawable/Drawable;IF)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 147
    const/4 v0, 0x1

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setClickable(Z)V

    .line 148
    const/4 v0, 0x1

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 149
    return-object v9

    .line 128
    :cond_0
    const/high16 v0, 0x41700000    # 15.0f

    goto :goto_0

    :cond_1
    move v0, v1

    .line 130
    goto :goto_1

    :cond_2
    const/high16 v0, 0x41300000    # 11.0f

    goto :goto_2

    .line 132
    :cond_3
    const/high16 v0, 0x42380000    # 46.0f

    goto :goto_3

    .line 133
    :cond_4
    const/high16 v1, 0x41400000    # 12.0f

    move v8, v1

    goto :goto_4

    .line 137
    :pswitch_1
    sget v4, Lru/fokus/tetrad/Ui;->INK:I

    sget v3, Lru/fokus/tetrad/Ui;->INK:I

    sget v1, Lru/fokus/tetrad/Ui;->ON_INK:I

    move v0, v2

    move v7, v4

    goto :goto_5

    .line 138
    :pswitch_2
    sget v4, Lru/fokus/tetrad/Ui;->RED_SOFT:I

    sget v2, Lru/fokus/tetrad/Ui;->RED_SOFT:I

    sget v1, Lru/fokus/tetrad/Ui;->RED:I

    const v0, 0x22d0343a

    move v3, v2

    move v7, v4

    goto :goto_5

    .line 139
    :pswitch_3
    sget v1, Lru/fokus/tetrad/Ui;->INK:I

    const v0, 0x22808080

    move v3, v4

    move v7, v4

    goto :goto_5

    .line 140
    :pswitch_4
    const v1, -0xf1ebd0

    move v0, v2

    move v3, v5

    move v7, v5

    goto :goto_5

    .line 141
    :pswitch_5
    const v1, -0x110e01

    move v0, v2

    move v3, v6

    move v7, v6

    goto :goto_5

    .line 142
    :pswitch_6
    const v1, -0x5c532a

    const v0, 0x22ffffff

    move v3, v4

    move v7, v4

    goto :goto_5

    .line 136
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static card(Landroid/content/Context;)Landroid/widget/LinearLayout;
    .locals 6

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v5, 0x41900000    # 18.0f

    .line 228
    const/16 v0, 0xe

    invoke-static {p0, v0}, Lru/fokus/tetrad/Ui;->col(Landroid/content/Context;I)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 229
    sget v3, Lru/fokus/tetrad/Ui;->CARD:I

    sget v4, Lru/fokus/tetrad/Ui;->LINE:I

    sget-boolean v0, Lru/fokus/tetrad/Ui;->night:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v3, v5, v4, v0}, Lru/fokus/tetrad/Ui;->round(IFIF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 230
    invoke-static {v5}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v0

    invoke-static {v5}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v3

    invoke-static {v5}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v4

    invoke-static {v5}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v5

    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 231
    sget-boolean v0, Lru/fokus/tetrad/Ui;->night:Z

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v0, v3, :cond_0

    invoke-static {v1}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setElevation(F)V

    .line 232
    :cond_0
    return-object v2

    .line 229
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static chip(Landroid/content/Context;Ljava/lang/String;Z)Landroid/widget/TextView;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/high16 v3, 0x41800000    # 16.0f

    const/high16 v4, 0x41200000    # 10.0f

    .line 158
    const/high16 v0, 0x41700000    # 15.0f

    sget v1, Lru/fokus/tetrad/Ui;->FG:I

    sget-object v2, Lru/fokus/tetrad/Ui;->MEDIUM:Landroid/graphics/Typeface;

    invoke-static {p0, p1, v0, v1, v2}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v0

    .line 159
    invoke-static {v3}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v1

    invoke-static {v4}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v2

    invoke-static {v3}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v3

    invoke-static {v4}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 160
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 161
    invoke-static {v0, p2}, Lru/fokus/tetrad/Ui;->styleChip(Landroid/widget/TextView;Z)V

    .line 162
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setClickable(Z)V

    .line 163
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 164
    return-object v0
.end method

.method public static clock(J)Ljava/lang/String;
    .locals 10

    .prologue
    const-wide/16 v4, 0xe10

    const-wide/16 v8, 0x3c

    const-wide/16 v6, 0x0

    .line 283
    long-to-double v0, p0

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 284
    div-long v2, v0, v4

    rem-long v4, v0, v4

    div-long/2addr v4, v8

    rem-long/2addr v0, v8

    .line 285
    cmp-long v6, v2, v6

    if-lez v6, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v4, v5}, Lru/fokus/tetrad/Ui;->two(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0, v1}, Lru/fokus/tetrad/Ui;->two(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 286
    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0, v1}, Lru/fokus/tetrad/Ui;->two(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static col(Landroid/content/Context;I)Landroid/widget/LinearLayout;
    .locals 2

    .prologue
    .line 193
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 194
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 195
    if-lez p1, :cond_0

    invoke-static {p1}, Lru/fokus/tetrad/Ui;->gap(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setShowDividers(I)V

    .line 196
    :cond_0
    return-object v0
.end method

.method public static dashed(IFI)Landroid/graphics/drawable/GradientDrawable;
    .locals 4

    .prologue
    .line 98
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lru/fokus/tetrad/Ui;->round(IFIF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    .line 99
    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v1

    const/high16 v2, 0x40e00000    # 7.0f

    invoke-static {v2}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-static {v3}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v1, p2, v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(IIFF)V

    .line 100
    return-object v0
.end method

.method public static dp(F)I
    .locals 1

    .prologue
    .line 87
    sget v0, Lru/fokus/tetrad/Ui;->density:F

    mul-float/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public static edit(Landroid/content/Context;Ljava/lang/String;Z)Landroid/widget/EditText;
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/high16 v3, 0x41600000    # 14.0f

    const/high16 v5, 0x41400000    # 12.0f

    .line 173
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 174
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 175
    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {v0, v6, v1}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 176
    sget v1, Lru/fokus/tetrad/Ui;->FG:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 177
    sget v1, Lru/fokus/tetrad/Ui;->MUTED:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 178
    sget-object v1, Lru/fokus/tetrad/Ui;->BODY:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 179
    invoke-static {v3}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v1

    invoke-static {v5}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v2

    invoke-static {v3}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v3

    invoke-static {v5}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 180
    sget v1, Lru/fokus/tetrad/Ui;->CARD:I

    sget v2, Lru/fokus/tetrad/Ui;->LINE:I

    const/high16 v3, 0x3fc00000    # 1.5f

    invoke-static {v1, v5, v2, v3}, Lru/fokus/tetrad/Ui;->round(IFIF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 181
    if-eqz p2, :cond_0

    .line 182
    const v1, 0x24001

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 183
    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setMinLines(I)V

    .line 184
    const v1, 0x800033

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setGravity(I)V

    .line 189
    :goto_0
    return-object v0

    .line 186
    :cond_0
    const/16 v1, 0x4001

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 187
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    goto :goto_0
.end method

.method private static font(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Typeface;
    .locals 3

    .prologue
    .line 63
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fonts/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".ttf"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 64
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-static {v0, p2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_0
.end method

.method public static gap(I)Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 208
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 209
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 210
    int-to-float v1, p0

    invoke-static {v1}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v1

    int-to-float v2, p0

    invoke-static {v2}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    .line 211
    return-object v0
.end method

.method public static header(Landroid/app/Activity;Ljava/lang/String;)Landroid/widget/LinearLayout;
    .locals 5

    .prologue
    const/high16 v4, 0x42300000    # 44.0f

    .line 256
    const/16 v0, 0xc

    invoke-static {p0, v0}, Lru/fokus/tetrad/Ui;->row(Landroid/content/Context;I)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 257
    const-string v1, "\u2190"

    const-string v2, "\u041d\u0430\u0437\u0430\u0434"

    invoke-static {p0, v1, v2}, Lru/fokus/tetrad/Ui;->iconButton(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    .line 258
    new-instance v2, Lru/fokus/tetrad/Ui$1;

    invoke-direct {v2, p0}, Lru/fokus/tetrad/Ui$1;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 259
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {v4}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v3

    invoke-static {v4}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 260
    const/high16 v1, 0x41a00000    # 20.0f

    sget v2, Lru/fokus/tetrad/Ui;->FG:I

    sget-object v3, Lru/fokus/tetrad/Ui;->BOLD:Landroid/graphics/Typeface;

    invoke-static {p0, p1, v1, v2, v3}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2}, Lru/fokus/tetrad/Ui;->weight(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 261
    return-object v0
.end method

.method public static iconButton(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/widget/TextView;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const v4, 0x4479c000    # 999.0f

    .line 245
    const/high16 v0, 0x41b00000    # 22.0f

    sget v1, Lru/fokus/tetrad/Ui;->FG:I

    sget-object v2, Lru/fokus/tetrad/Ui;->BODY:Landroid/graphics/Typeface;

    invoke-static {p0, p1, v0, v1, v2}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v0

    .line 246
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 247
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 248
    sget v1, Lru/fokus/tetrad/Ui;->CARD:I

    sget v2, Lru/fokus/tetrad/Ui;->LINE:I

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v1, v4, v2, v3}, Lru/fokus/tetrad/Ui;->round(IFIF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    const v2, 0x22808080

    invoke-static {v1, v2, v4}, Lru/fokus/tetrad/Ui;->ripple(Landroid/graphics/drawable/Drawable;IF)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 249
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setClickable(Z)V

    .line 250
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 251
    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 42
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lru/fokus/tetrad/Ui;->density:F

    .line 43
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    const/16 v3, 0x20

    if-ne v0, v3, :cond_1

    move v0, v1

    :goto_0
    sput-boolean v0, Lru/fokus/tetrad/Ui;->night:Z

    .line 44
    sget-boolean v0, Lru/fokus/tetrad/Ui;->night:Z

    if-nez v0, :cond_2

    .line 45
    const v0, -0xc0a07

    sput v0, Lru/fokus/tetrad/Ui;->BG:I

    sput v4, Lru/fokus/tetrad/Ui;->CARD:I

    const v0, -0x1e1911

    sput v0, Lru/fokus/tetrad/Ui;->LINE:I

    const v0, -0xeae5d3

    sput v0, Lru/fokus/tetrad/Ui;->FG:I

    const v0, -0xa2997f

    sput v0, Lru/fokus/tetrad/Ui;->MUTED:I

    .line 46
    const v0, -0xd0ab2a

    sput v0, Lru/fokus/tetrad/Ui;->INK:I

    const v0, -0x171204

    sput v0, Lru/fokus/tetrad/Ui;->INK_SOFT:I

    sput v4, Lru/fokus/tetrad/Ui;->ON_INK:I

    const v0, -0x2fcbc6

    sput v0, Lru/fokus/tetrad/Ui;->RED:I

    const v0, -0x31314

    sput v0, Lru/fokus/tetrad/Ui;->RED_SOFT:I

    .line 47
    const v0, -0xe87ba5

    sput v0, Lru/fokus/tetrad/Ui;->OK:I

    const v0, -0x1c0b14

    sput v0, Lru/fokus/tetrad/Ui;->OK_SOFT:I

    const v0, -0x65a500

    sput v0, Lru/fokus/tetrad/Ui;->WARN:I

    const v0, -0x30d20

    sput v0, Lru/fokus/tetrad/Ui;->WARN_SOFT:I

    .line 53
    :goto_1
    sget-object v0, Lru/fokus/tetrad/Ui;->BODY:Landroid/graphics/Typeface;

    if-nez v0, :cond_0

    .line 54
    const-string v0, "golos_regular"

    invoke-static {p0, v0, v2}, Lru/fokus/tetrad/Ui;->font(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lru/fokus/tetrad/Ui;->BODY:Landroid/graphics/Typeface;

    .line 55
    const-string v0, "golos_medium"

    invoke-static {p0, v0, v2}, Lru/fokus/tetrad/Ui;->font(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lru/fokus/tetrad/Ui;->MEDIUM:Landroid/graphics/Typeface;

    .line 56
    const-string v0, "golos_bold"

    invoke-static {p0, v0, v1}, Lru/fokus/tetrad/Ui;->font(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lru/fokus/tetrad/Ui;->BOLD:Landroid/graphics/Typeface;

    .line 57
    const-string v0, "unbounded_bold"

    invoke-static {p0, v0, v1}, Lru/fokus/tetrad/Ui;->font(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lru/fokus/tetrad/Ui;->DISPLAY:Landroid/graphics/Typeface;

    .line 58
    const-string v0, "caveat_bold"

    invoke-static {p0, v0, v1}, Lru/fokus/tetrad/Ui;->font(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lru/fokus/tetrad/Ui;->HAND:Landroid/graphics/Typeface;

    .line 60
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 43
    goto :goto_0

    .line 49
    :cond_2
    const v0, -0xf0ede6

    sput v0, Lru/fokus/tetrad/Ui;->BG:I

    const v0, -0xe7e3d9

    sput v0, Lru/fokus/tetrad/Ui;->CARD:I

    const v0, -0xd5cfbe

    sput v0, Lru/fokus/tetrad/Ui;->LINE:I

    const v0, -0x16130b

    sput v0, Lru/fokus/tetrad/Ui;->FG:I

    const v0, -0x655c41

    sput v0, Lru/fokus/tetrad/Ui;->MUTED:I

    .line 50
    const v0, -0x715a01

    sput v0, Lru/fokus/tetrad/Ui;->INK:I

    const v0, -0xe0d8b9

    sput v0, Lru/fokus/tetrad/Ui;->INK_SOFT:I

    const v0, -0xf1ebd0

    sput v0, Lru/fokus/tetrad/Ui;->ON_INK:I

    const v0, -0x8586

    sput v0, Lru/fokus/tetrad/Ui;->RED:I

    const v0, -0xc5e3de

    sput v0, Lru/fokus/tetrad/Ui;->RED_SOFT:I

    .line 51
    const v0, -0xb02c66

    sput v0, Lru/fokus/tetrad/Ui;->OK:I

    const v0, -0xebcdd6

    sput v0, Lru/fokus/tetrad/Ui;->OK_SOFT:I

    const v0, -0xd4fb4

    sput v0, Lru/fokus/tetrad/Ui;->WARN:I

    const v0, -0xc5d3ec

    sput v0, Lru/fokus/tetrad/Ui;->WARN_SOFT:I

    goto :goto_1
.end method

.method public static label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 118
    const/high16 v0, 0x41600000    # 14.0f

    sget v1, Lru/fokus/tetrad/Ui;->MUTED:I

    sget-object v2, Lru/fokus/tetrad/Ui;->MEDIUM:Landroid/graphics/Typeface;

    invoke-static {p0, p1, v0, v1, v2}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v0

    .line 119
    const/high16 v1, 0x40c00000    # 6.0f

    invoke-static {v1}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v1

    invoke-virtual {v0, v3, v3, v3, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 120
    return-object v0
.end method

.method public static matchWrap()Landroid/widget/LinearLayout$LayoutParams;
    .locals 3

    .prologue
    .line 215
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public static paintBars(Landroid/app/Activity;IZ)V
    .locals 4

    .prologue
    .line 74
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 75
    invoke-virtual {v1, p1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 76
    invoke-virtual {v1, p1}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 77
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v0, v2, :cond_1

    .line 78
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    .line 79
    if-nez p2, :cond_2

    or-int/lit16 v0, v0, 0x2000

    .line 80
    :goto_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_0

    .line 81
    if-nez p2, :cond_3

    or-int/lit8 v0, v0, 0x10

    .line 83
    :cond_0
    :goto_1
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 85
    :cond_1
    return-void

    .line 79
    :cond_2
    and-int/lit16 v0, v0, -0x2001

    goto :goto_0

    .line 81
    :cond_3
    and-int/lit8 v0, v0, -0x11

    goto :goto_1
.end method

.method public static pill(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;
    .locals 5

    .prologue
    const/high16 v3, 0x41200000    # 10.0f

    const/high16 v4, 0x40800000    # 4.0f

    .line 237
    const/high16 v0, 0x41500000    # 13.0f

    sget-object v1, Lru/fokus/tetrad/Ui;->BOLD:Landroid/graphics/Typeface;

    invoke-static {p0, p1, v0, p2, v1}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v0

    .line 238
    invoke-static {v3}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v1

    invoke-static {v4}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v2

    invoke-static {v3}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v3

    invoke-static {v4}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 239
    const v1, 0x4479c000    # 999.0f

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p3, v1, v2, v3}, Lru/fokus/tetrad/Ui;->round(IFIF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 240
    return-object v0
.end method

.method public static plural(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 276
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0xa

    rem-long/2addr v0, v2

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0x64

    rem-long/2addr v2, v4

    .line 277
    const-wide/16 v4, 0x1

    cmp-long v4, v0, v4

    if-nez v4, :cond_0

    const-wide/16 v4, 0xb

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    .line 279
    :goto_0
    return-object p2

    .line 278
    :cond_0
    const-wide/16 v4, 0x2

    cmp-long v4, v0, v4

    if-ltz v4, :cond_2

    const-wide/16 v4, 0x4

    cmp-long v0, v0, v4

    if-gtz v0, :cond_2

    const-wide/16 v0, 0xc

    cmp-long v0, v2, v0

    if-ltz v0, :cond_1

    const-wide/16 v0, 0xe

    cmp-long v0, v2, v0

    if-lez v0, :cond_2

    :cond_1
    move-object p2, p3

    goto :goto_0

    :cond_2
    move-object p2, p4

    .line 279
    goto :goto_0
.end method

.method public static ripple(Landroid/graphics/drawable/Drawable;IF)Landroid/graphics/drawable/Drawable;
    .locals 5

    .prologue
    .line 104
    new-instance v0, Landroid/graphics/drawable/RippleDrawable;

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, p2, v3, v4}, Lru/fokus/tetrad/Ui;->round(IFIF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method public static round(IFIF)Landroid/graphics/drawable/GradientDrawable;
    .locals 3

    .prologue
    .line 90
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 91
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 92
    invoke-static {p1}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 93
    const/4 v1, 0x0

    cmpl-float v1, p3, v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    invoke-static {p3}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1, p2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 94
    :cond_0
    return-object v0
.end method

.method public static row(Landroid/content/Context;I)Landroid/widget/LinearLayout;
    .locals 2

    .prologue
    .line 200
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 201
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 202
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 203
    if-lez p1, :cond_0

    invoke-static {p1}, Lru/fokus/tetrad/Ui;->gap(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setShowDividers(I)V

    .line 204
    :cond_0
    return-object v0
.end method

.method public static screen(Landroid/app/Activity;)Landroid/widget/LinearLayout;
    .locals 6

    .prologue
    const/high16 v4, 0x41900000    # 18.0f

    .line 266
    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 267
    sget v1, Lru/fokus/tetrad/Ui;->BG:I

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setBackgroundColor(I)V

    .line 268
    const/16 v1, 0x10

    invoke-static {p0, v1}, Lru/fokus/tetrad/Ui;->col(Landroid/content/Context;I)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 269
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

    .line 270
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 271
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 272
    return-object v1
.end method

.method public static setEnabled(Landroid/view/View;Z)V
    .locals 1

    .prologue
    .line 153
    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 154
    if-eqz p1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    .line 155
    return-void

    .line 154
    :cond_0
    const v0, 0x3ecccccd    # 0.4f

    goto :goto_0
.end method

.method public static styleChip(Landroid/widget/TextView;Z)V
    .locals 4

    .prologue
    const v3, 0x4479c000    # 999.0f

    .line 168
    if-eqz p1, :cond_0

    sget v0, Lru/fokus/tetrad/Ui;->INK:I

    move v1, v0

    :goto_0
    if-eqz p1, :cond_1

    sget v0, Lru/fokus/tetrad/Ui;->INK:I

    :goto_1
    const/high16 v2, 0x3fc00000    # 1.5f

    invoke-static {v1, v3, v0, v2}, Lru/fokus/tetrad/Ui;->round(IFIF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    const v1, 0x22808080

    invoke-static {v0, v1, v3}, Lru/fokus/tetrad/Ui;->ripple(Landroid/graphics/drawable/Drawable;IF)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 169
    if-eqz p1, :cond_2

    sget v0, Lru/fokus/tetrad/Ui;->ON_INK:I

    :goto_2
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 170
    return-void

    .line 168
    :cond_0
    sget v0, Lru/fokus/tetrad/Ui;->CARD:I

    move v1, v0

    goto :goto_0

    :cond_1
    sget v0, Lru/fokus/tetrad/Ui;->LINE:I

    goto :goto_1

    .line 169
    :cond_2
    sget v0, Lru/fokus/tetrad/Ui;->FG:I

    goto :goto_2
.end method

.method public static text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;
    .locals 3

    .prologue
    .line 108
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 109
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 111
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 112
    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 113
    const/4 v1, 0x0

    const v2, 0x3f933333    # 1.15f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 114
    return-object v0
.end method

.method public static title(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;
    .locals 3

    .prologue
    .line 123
    const/high16 v0, 0x41a00000    # 20.0f

    sget v1, Lru/fokus/tetrad/Ui;->FG:I

    sget-object v2, Lru/fokus/tetrad/Ui;->BOLD:Landroid/graphics/Typeface;

    invoke-static {p0, p1, v0, v1, v2}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method public static two(J)Ljava/lang/String;
    .locals 2

    .prologue
    .line 289
    const-wide/16 v0, 0xa

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static weight(F)Landroid/widget/LinearLayout$LayoutParams;
    .locals 3

    .prologue
    .line 223
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2, p0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    return-object v0
.end method

.method public static wrap()Landroid/widget/LinearLayout$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 219
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method
