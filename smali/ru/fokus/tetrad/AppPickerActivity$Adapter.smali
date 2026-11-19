.class Lru/fokus/tetrad/AppPickerActivity$Adapter;
.super Landroid/widget/BaseAdapter;
.source "AppPickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/fokus/tetrad/AppPickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Adapter"
.end annotation


# instance fields
.field final synthetic this$0:Lru/fokus/tetrad/AppPickerActivity;


# direct methods
.method constructor <init>(Lru/fokus/tetrad/AppPickerActivity;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lru/fokus/tetrad/AppPickerActivity$Adapter;->this$0:Lru/fokus/tetrad/AppPickerActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lru/fokus/tetrad/AppPickerActivity$Adapter;->this$0:Lru/fokus/tetrad/AppPickerActivity;

    invoke-static {v0}, Lru/fokus/tetrad/AppPickerActivity;->access$500(Lru/fokus/tetrad/AppPickerActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lru/fokus/tetrad/AppPickerActivity$Adapter;->this$0:Lru/fokus/tetrad/AppPickerActivity;

    invoke-static {v0}, Lru/fokus/tetrad/AppPickerActivity;->access$500(Lru/fokus/tetrad/AppPickerActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 142
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/high16 v5, 0x42200000    # 40.0f

    const/high16 v4, 0x41200000    # 10.0f

    const/high16 v7, 0x41400000    # 12.0f

    const/4 v3, 0x0

    .line 146
    if-nez p2, :cond_0

    .line 147
    iget-object v0, p0, Lru/fokus/tetrad/AppPickerActivity$Adapter;->this$0:Lru/fokus/tetrad/AppPickerActivity;

    const/16 v1, 0xe

    invoke-static {v0, v1}, Lru/fokus/tetrad/Ui;->row(Landroid/content/Context;I)Landroid/widget/LinearLayout;

    move-result-object p2

    .line 148
    invoke-static {v7}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v0

    invoke-static {v4}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v1

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v2}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v2

    invoke-static {v4}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v4

    invoke-virtual {p2, v0, v1, v2, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 149
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 150
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lru/fokus/tetrad/AppPickerActivity$Adapter;->this$0:Lru/fokus/tetrad/AppPickerActivity;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 151
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {v5}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v2

    invoke-static {v5}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v4

    invoke-direct {v1, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 152
    iget-object v0, p0, Lru/fokus/tetrad/AppPickerActivity$Adapter;->this$0:Lru/fokus/tetrad/AppPickerActivity;

    invoke-static {v0, v3}, Lru/fokus/tetrad/Ui;->col(Landroid/content/Context;I)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 153
    iget-object v1, p0, Lru/fokus/tetrad/AppPickerActivity$Adapter;->this$0:Lru/fokus/tetrad/AppPickerActivity;

    const-string v2, ""

    const/high16 v4, 0x41800000    # 16.0f

    sget v5, Lru/fokus/tetrad/Ui;->FG:I

    sget-object v6, Lru/fokus/tetrad/Ui;->MEDIUM:Landroid/graphics/Typeface;

    invoke-static {v1, v2, v4, v5, v6}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 154
    iget-object v1, p0, Lru/fokus/tetrad/AppPickerActivity$Adapter;->this$0:Lru/fokus/tetrad/AppPickerActivity;

    const-string v2, ""

    sget v4, Lru/fokus/tetrad/Ui;->MUTED:I

    sget-object v5, Lru/fokus/tetrad/Ui;->BODY:Landroid/graphics/Typeface;

    invoke-static {v1, v2, v7, v4, v5}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 155
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Lru/fokus/tetrad/Ui;->weight(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 156
    new-instance v0, Landroid/widget/CheckBox;

    iget-object v1, p0, Lru/fokus/tetrad/AppPickerActivity$Adapter;->this$0:Lru/fokus/tetrad/AppPickerActivity;

    invoke-direct {v0, v1}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .line 157
    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 158
    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setFocusable(Z)V

    .line 159
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 160
    const/16 v0, 0x10

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 162
    :goto_0
    iget-object v0, p0, Lru/fokus/tetrad/AppPickerActivity$Adapter;->this$0:Lru/fokus/tetrad/AppPickerActivity;

    invoke-static {v0}, Lru/fokus/tetrad/AppPickerActivity;->access$500(Lru/fokus/tetrad/AppPickerActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/fokus/tetrad/AppPickerActivity$App;

    .line 163
    iget-object v1, p0, Lru/fokus/tetrad/AppPickerActivity$Adapter;->this$0:Lru/fokus/tetrad/AppPickerActivity;

    invoke-static {v1}, Lru/fokus/tetrad/AppPickerActivity;->access$300(Lru/fokus/tetrad/AppPickerActivity;)Ljava/util/Set;

    move-result-object v1

    iget-object v2, v0, Lru/fokus/tetrad/AppPickerActivity$App;->pkg:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    .line 164
    invoke-virtual {p2, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, v0, Lru/fokus/tetrad/AppPickerActivity$App;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 165
    invoke-virtual {p2, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 166
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v5, v0, Lru/fokus/tetrad/AppPickerActivity$App;->label:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 168
    if-eqz v4, :cond_1

    const-string v2, "\u0417\u0430\u0431\u043b\u043e\u043a\u0438\u0440\u043e\u0432\u0430\u043d\u043e \u0432\u043e \u0432\u0440\u0435\u043c\u044f \u0443\u0440\u043e\u043a\u0430"

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    if-eqz v4, :cond_3

    sget v2, Lru/fokus/tetrad/Ui;->RED:I

    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 170
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_4

    const/16 v2, 0x8

    :goto_3
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 171
    const/4 v1, 0x2

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 172
    if-eqz v4, :cond_5

    sget v1, Lru/fokus/tetrad/Ui;->RED_SOFT:I

    :goto_4
    const/4 v2, 0x0

    invoke-static {v1, v7, v3, v2}, Lru/fokus/tetrad/Ui;->round(IFIF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    const v2, 0x22808080

    invoke-static {v1, v2, v7}, Lru/fokus/tetrad/Ui;->ripple(Landroid/graphics/drawable/Drawable;IF)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 173
    new-instance v1, Lru/fokus/tetrad/AppPickerActivity$Adapter$1;

    invoke-direct {v1, p0, v0}, Lru/fokus/tetrad/AppPickerActivity$Adapter$1;-><init>(Lru/fokus/tetrad/AppPickerActivity$Adapter;Lru/fokus/tetrad/AppPickerActivity$App;)V

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    return-object p2

    .line 161
    :cond_0
    check-cast p2, Landroid/widget/LinearLayout;

    goto :goto_0

    .line 168
    :cond_1
    iget-boolean v2, v0, Lru/fokus/tetrad/AppPickerActivity$App;->known:Z

    if-eqz v2, :cond_2

    const-string v2, "\u0427\u0430\u0441\u0442\u043e \u043e\u0442\u0432\u043b\u0435\u043a\u0430\u0435\u0442"

    goto :goto_1

    :cond_2
    const-string v2, ""

    goto :goto_1

    .line 169
    :cond_3
    sget v2, Lru/fokus/tetrad/Ui;->MUTED:I

    goto :goto_2

    :cond_4
    move v2, v3

    .line 170
    goto :goto_3

    .line 172
    :cond_5
    sget v1, Lru/fokus/tetrad/Ui;->BG:I

    goto :goto_4
.end method
