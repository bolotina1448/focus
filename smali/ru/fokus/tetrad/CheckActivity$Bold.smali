.class Lru/fokus/tetrad/CheckActivity$Bold;
.super Landroid/text/style/TypefaceSpan;
.source "CheckActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/fokus/tetrad/CheckActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Bold"
.end annotation


# instance fields
.field private final tf:Landroid/graphics/Typeface;


# direct methods
.method constructor <init>(Landroid/graphics/Typeface;)V
    .locals 1

    .prologue
    .line 279
    const-string v0, "sans-serif"

    invoke-direct {p0, v0}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lru/fokus/tetrad/CheckActivity$Bold;->tf:Landroid/graphics/Typeface;

    return-void
.end method


# virtual methods
.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lru/fokus/tetrad/CheckActivity$Bold;->tf:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-void
.end method

.method public updateMeasureState(Landroid/text/TextPaint;)V
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lru/fokus/tetrad/CheckActivity$Bold;->tf:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-void
.end method
