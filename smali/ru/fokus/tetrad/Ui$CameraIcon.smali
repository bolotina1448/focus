.class public Lru/fokus/tetrad/Ui$CameraIcon;
.super Landroid/view/View;
.source "Ui.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/fokus/tetrad/Ui;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CameraIcon"
.end annotation


# instance fields
.field private final p:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    .prologue
    .line 295
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 293
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lru/fokus/tetrad/Ui$CameraIcon;->p:Landroid/graphics/Paint;

    .line 296
    iget-object v0, p0, Lru/fokus/tetrad/Ui$CameraIcon;->p:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 297
    iget-object v0, p0, Lru/fokus/tetrad/Ui$CameraIcon;->p:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 298
    iget-object v0, p0, Lru/fokus/tetrad/Ui$CameraIcon;->p:Landroid/graphics/Paint;

    const v1, 0x400ccccd    # 2.2f

    invoke-static {v1}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 299
    iget-object v0, p0, Lru/fokus/tetrad/Ui$CameraIcon;->p:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 300
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .prologue
    const v11, 0x3e99999a    # 0.3f

    const v10, 0x3e6147ae    # 0.22f

    const v9, 0x3df5c28f    # 0.12f

    const/high16 v8, 0x40000000    # 2.0f

    .line 302
    invoke-virtual {p0}, Lru/fokus/tetrad/Ui$CameraIcon;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lru/fokus/tetrad/Ui$CameraIcon;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 303
    sub-float/2addr v0, v2

    div-float/2addr v0, v8

    const v3, 0x3da3d70a    # 0.08f

    mul-float/2addr v3, v2

    add-float/2addr v0, v3

    sub-float/2addr v1, v2

    div-float/2addr v1, v8

    const v3, 0x3e851eb8    # 0.26f

    mul-float/2addr v3, v2

    add-float/2addr v1, v3

    const v3, 0x3f570a3d    # 0.84f

    mul-float/2addr v3, v2

    add-float/2addr v3, v0

    const v4, 0x3f147ae1    # 0.58f

    mul-float/2addr v4, v2

    add-float/2addr v4, v1

    .line 304
    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    .line 305
    invoke-virtual {v5, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 306
    mul-float v6, v2, v10

    add-float/2addr v6, v0

    invoke-virtual {v5, v6, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 307
    mul-float v6, v2, v11

    add-float/2addr v6, v0

    mul-float v7, v2, v9

    sub-float v7, v1, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 308
    mul-float v6, v2, v11

    sub-float v6, v3, v6

    mul-float v7, v2, v9

    sub-float v7, v1, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 309
    mul-float v6, v2, v10

    sub-float v6, v3, v6

    invoke-virtual {v5, v6, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 310
    invoke-virtual {v5, v3, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 311
    invoke-virtual {v5, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 312
    invoke-virtual {v5, v0, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 313
    invoke-virtual {v5}, Landroid/graphics/Path;->close()V

    .line 314
    iget-object v6, p0, Lru/fokus/tetrad/Ui$CameraIcon;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 315
    add-float/2addr v0, v3

    div-float/2addr v0, v8

    add-float/2addr v1, v4

    div-float/2addr v1, v8

    const v3, 0x3c23d70a    # 0.01f

    mul-float/2addr v3, v2

    add-float/2addr v1, v3

    const v3, 0x3e19999a    # 0.15f

    mul-float/2addr v2, v3

    iget-object v3, p0, Lru/fokus/tetrad/Ui$CameraIcon;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 316
    return-void
.end method
