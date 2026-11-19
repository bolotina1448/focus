.class Lru/fokus/tetrad/Grades$1;
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
        "Lru/fokus/tetrad/Mesh$Mark;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 36
    check-cast p1, Lru/fokus/tetrad/Mesh$Mark;

    check-cast p2, Lru/fokus/tetrad/Mesh$Mark;

    invoke-virtual {p0, p1, p2}, Lru/fokus/tetrad/Grades$1;->compare(Lru/fokus/tetrad/Mesh$Mark;Lru/fokus/tetrad/Mesh$Mark;)I

    move-result v0

    return v0
.end method

.method public compare(Lru/fokus/tetrad/Mesh$Mark;Lru/fokus/tetrad/Mesh$Mark;)I
    .locals 2

    .prologue
    .line 37
    iget-object v0, p1, Lru/fokus/tetrad/Mesh$Mark;->date:Ljava/lang/String;

    iget-object v1, p2, Lru/fokus/tetrad/Mesh$Mark;->date:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
