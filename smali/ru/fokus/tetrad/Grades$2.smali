.class Lru/fokus/tetrad/Grades$2;
.super Ljava/lang/Object;
.source "Grades.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/fokus/tetrad/Grades;->analyze(Ljava/util/List;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lru/fokus/tetrad/Grades$Subject;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 74
    check-cast p1, Lru/fokus/tetrad/Grades$Subject;

    check-cast p2, Lru/fokus/tetrad/Grades$Subject;

    invoke-virtual {p0, p1, p2}, Lru/fokus/tetrad/Grades$2;->compare(Lru/fokus/tetrad/Grades$Subject;Lru/fokus/tetrad/Grades$Subject;)I

    move-result v0

    return v0
.end method

.method public compare(Lru/fokus/tetrad/Grades$Subject;Lru/fokus/tetrad/Grades$Subject;)I
    .locals 4

    .prologue
    .line 75
    iget-wide v0, p1, Lru/fokus/tetrad/Grades$Subject;->avg:D

    iget-wide v2, p2, Lru/fokus/tetrad/Grades$Subject;->avg:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    return v0
.end method
