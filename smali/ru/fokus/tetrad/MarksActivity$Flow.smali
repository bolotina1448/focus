.class Lru/fokus/tetrad/MarksActivity$Flow;
.super Landroid/view/ViewGroup;
.source "MarksActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/fokus/tetrad/MarksActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Flow"
.end annotation


# instance fields
.field private final gap:I


# direct methods
.method constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .prologue
    .line 376
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    iput p2, p0, Lru/fokus/tetrad/MarksActivity$Flow;->gap:I

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 10

    .prologue
    .line 390
    sub-int v4, p4, p2

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 391
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lru/fokus/tetrad/MarksActivity$Flow;->getChildCount()I

    move-result v5

    if-ge v0, v5, :cond_1

    .line 392
    invoke-virtual {p0, v0}, Lru/fokus/tetrad/MarksActivity$Flow;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 393
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 394
    if-lez v3, :cond_0

    add-int v8, v3, v6

    if-le v8, v4, :cond_0

    const/4 v3, 0x0

    iget v8, p0, Lru/fokus/tetrad/MarksActivity$Flow;->gap:I

    add-int/2addr v1, v8

    add-int/2addr v2, v1

    const/4 v1, 0x0

    .line 395
    :cond_0
    add-int v8, v3, v6

    add-int v9, v2, v7

    invoke-virtual {v5, v3, v2, v8, v9}, Landroid/view/View;->layout(IIII)V

    .line 396
    iget v5, p0, Lru/fokus/tetrad/MarksActivity$Flow;->gap:I

    add-int/2addr v5, v6

    add-int/2addr v3, v5

    .line 397
    invoke-static {v1, v7}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 391
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 399
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 10

    .prologue
    const/high16 v9, 0x40000000    # 2.0f

    const/4 v1, 0x0

    .line 378
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    move v0, v1

    move v2, v1

    move v3, v1

    move v4, v1

    .line 379
    :goto_0
    invoke-virtual {p0}, Lru/fokus/tetrad/MarksActivity$Flow;->getChildCount()I

    move-result v6

    if-ge v0, v6, :cond_1

    .line 380
    invoke-virtual {p0, v0}, Lru/fokus/tetrad/MarksActivity$Flow;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 381
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    .line 382
    iget v8, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    iget v7, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v7, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-virtual {v6, v8, v7}, Landroid/view/View;->measure(II)V

    .line 383
    if-lez v4, :cond_0

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v7, v4

    if-le v7, v5, :cond_0

    iget v4, p0, Lru/fokus/tetrad/MarksActivity$Flow;->gap:I

    add-int/2addr v2, v4

    add-int/2addr v3, v2

    move v2, v1

    move v4, v1

    .line 384
    :cond_0
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    iget v8, p0, Lru/fokus/tetrad/MarksActivity$Flow;->gap:I

    add-int/2addr v7, v8

    add-int/2addr v4, v7

    .line 385
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 379
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 387
    :cond_1
    add-int v0, v3, v2

    invoke-virtual {p0, v5, v0}, Lru/fokus/tetrad/MarksActivity$Flow;->setMeasuredDimension(II)V

    .line 388
    return-void
.end method
