.class public Lru/fokus/tetrad/Ui$Progress;
.super Landroid/view/View;
.source "Ui.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/fokus/tetrad/Ui;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Progress"
.end annotation


# instance fields
.field private final bg:Landroid/graphics/Paint;

.field private final fg:Landroid/graphics/Paint;

.field private value:F


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 323
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 322
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lru/fokus/tetrad/Ui$Progress;->bg:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lru/fokus/tetrad/Ui$Progress;->fg:Landroid/graphics/Paint;

    .line 323
    iget-object v0, p0, Lru/fokus/tetrad/Ui$Progress;->bg:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lru/fokus/tetrad/Ui$Progress;->fg:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 326
    invoke-virtual {p0}, Lru/fokus/tetrad/Ui$Progress;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lru/fokus/tetrad/Ui$Progress;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v0, v2

    .line 327
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, v5, v5, v1, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v4, p0, Lru/fokus/tetrad/Ui$Progress;->bg:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v2, v2, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 328
    iget v3, p0, Lru/fokus/tetrad/Ui$Progress;->value:F

    cmpl-float v3, v3, v5

    if-lez v3, :cond_0

    new-instance v3, Landroid/graphics/RectF;

    iget v4, p0, Lru/fokus/tetrad/Ui$Progress;->value:F

    mul-float/2addr v1, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-direct {v3, v5, v5, v1, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v0, p0, Lru/fokus/tetrad/Ui$Progress;->fg:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v2, v2, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 329
    :cond_0
    return-void
.end method

.method public set(F)V
    .locals 2

    .prologue
    .line 324
    iget v0, p0, Lru/fokus/tetrad/Ui$Progress;->value:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3a83126f    # 0.001f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lru/fokus/tetrad/Ui$Progress;->value:F

    invoke-virtual {p0}, Lru/fokus/tetrad/Ui$Progress;->invalidate()V

    :cond_0
    return-void
.end method
