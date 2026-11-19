.class Lru/fokus/tetrad/GroupPicker$1;
.super Ljava/lang/Object;
.source "GroupPicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/fokus/tetrad/GroupPicker;->show(Landroid/app/Activity;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$a:Landroid/app/Activity;

.field final synthetic val$box:Landroid/widget/LinearLayout;

.field final synthetic val$draw:[Ljava/lang/Runnable;

.field final synthetic val$fams:Ljava/util/Map;

.field final synthetic val$sel:Ljava/util/Set;


# direct methods
.method constructor <init>(Landroid/widget/LinearLayout;Landroid/app/Activity;Ljava/util/Map;Ljava/util/Set;[Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 104
    iput-object p1, p0, Lru/fokus/tetrad/GroupPicker$1;->val$box:Landroid/widget/LinearLayout;

    iput-object p2, p0, Lru/fokus/tetrad/GroupPicker$1;->val$a:Landroid/app/Activity;

    iput-object p3, p0, Lru/fokus/tetrad/GroupPicker$1;->val$fams:Ljava/util/Map;

    iput-object p4, p0, Lru/fokus/tetrad/GroupPicker$1;->val$sel:Ljava/util/Set;

    iput-object p5, p0, Lru/fokus/tetrad/GroupPicker$1;->val$draw:[Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/16 v13, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 105
    iget-object v0, p0, Lru/fokus/tetrad/GroupPicker$1;->val$box:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 106
    iget-object v0, p0, Lru/fokus/tetrad/GroupPicker$1;->val$box:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lru/fokus/tetrad/GroupPicker$1;->val$a:Landroid/app/Activity;

    const-string v2, "\u0412 \u0440\u0430\u0441\u043f\u0438\u0441\u0430\u043d\u0438\u0438 \u043d\u0430\u0448\u043b\u0438\u0441\u044c \u0433\u0440\u0443\u043f\u043f\u044b. \u041e\u0442\u043c\u0435\u0442\u044c \u0441\u0432\u043e\u0438 \u2014 \u043e\u0441\u0442\u0430\u043d\u0443\u0442\u0441\u044f \u0442\u043e\u043b\u044c\u043a\u043e \u0442\u0432\u043e\u0438 \u0443\u0440\u043e\u043a\u0438 \u0438 \u043a\u0430\u0431\u0438\u043d\u0435\u0442\u044b."

    const/high16 v5, 0x41600000    # 14.0f

    sget v6, Lru/fokus/tetrad/Ui;->MUTED:I

    sget-object v7, Lru/fokus/tetrad/Ui;->BODY:Landroid/graphics/Typeface;

    invoke-static {v1, v2, v5, v6, v7}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 107
    iget-object v0, p0, Lru/fokus/tetrad/GroupPicker$1;->val$fams:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 108
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v3, :cond_0

    move v2, v3

    .line 109
    :goto_1
    iget-object v1, p0, Lru/fokus/tetrad/GroupPicker$1;->val$a:Landroid/app/Activity;

    invoke-static {v1, v13}, Lru/fokus/tetrad/Ui;->col(Landroid/content/Context;I)Landroid/widget/LinearLayout;

    move-result-object v7

    .line 110
    iget-object v5, p0, Lru/fokus/tetrad/GroupPicker$1;->val$a:Landroid/app/Activity;

    if-eqz v2, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u0413\u0440\u0443\u043f\u043f\u0430 "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, " (\u0435\u0441\u043b\u0438 \u0445\u043e\u0434\u0438\u0448\u044c \u0432 \u043d\u0435\u0451)"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    const/high16 v8, 0x41700000    # 15.0f

    sget v9, Lru/fokus/tetrad/Ui;->FG:I

    sget-object v10, Lru/fokus/tetrad/Ui;->BOLD:Landroid/graphics/Typeface;

    invoke-static {v5, v1, v8, v9, v10}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 111
    new-instance v8, Landroid/widget/HorizontalScrollView;

    iget-object v1, p0, Lru/fokus/tetrad/GroupPicker$1;->val$a:Landroid/app/Activity;

    invoke-direct {v8, v1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 112
    invoke-virtual {v8, v4}, Landroid/widget/HorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 113
    iget-object v1, p0, Lru/fokus/tetrad/GroupPicker$1;->val$a:Landroid/app/Activity;

    invoke-static {v1, v13}, Lru/fokus/tetrad/Ui;->row(Landroid/content/Context;I)Landroid/widget/LinearLayout;

    move-result-object v9

    .line 114
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 115
    iget-object v11, p0, Lru/fokus/tetrad/GroupPicker$1;->val$a:Landroid/app/Activity;

    if-eqz v2, :cond_3

    iget-object v5, p0, Lru/fokus/tetrad/GroupPicker$1;->val$sel:Ljava/util/Set;

    invoke-interface {v5, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\u2713 "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_4
    iget-object v12, p0, Lru/fokus/tetrad/GroupPicker$1;->val$sel:Ljava/util/Set;

    invoke-interface {v12, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    invoke-static {v11, v5, v12}, Lru/fokus/tetrad/Ui;->chip(Landroid/content/Context;Ljava/lang/String;Z)Landroid/widget/TextView;

    move-result-object v5

    .line 116
    const/high16 v11, 0x42600000    # 56.0f

    invoke-static {v11}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v11

    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 117
    new-instance v11, Lru/fokus/tetrad/GroupPicker$1$1;

    invoke-direct {v11, p0, v1, v2, v0}, Lru/fokus/tetrad/GroupPicker$1$1;-><init>(Lru/fokus/tetrad/GroupPicker$1;Ljava/lang/String;ZLjava/util/Map$Entry;)V

    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    invoke-virtual {v9, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_3

    :cond_0
    move v2, v4

    .line 108
    goto/16 :goto_1

    .line 110
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u0413\u0440\u0443\u043f\u043f\u0430 "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, " \u2014 \u0432\u044b\u0431\u0435\u0440\u0438 \u043e\u0434\u043d\u0443"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    :cond_2
    move-object v5, v1

    .line 115
    goto :goto_4

    :cond_3
    move-object v5, v1

    goto :goto_4

    .line 124
    :cond_4
    invoke-virtual {v8, v9}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;)V

    .line 125
    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 126
    iget-object v0, p0, Lru/fokus/tetrad/GroupPicker$1;->val$box:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 128
    :cond_5
    return-void
.end method
