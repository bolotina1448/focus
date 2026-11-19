.class Lru/fokus/tetrad/ScheduleActivity$20;
.super Ljava/lang/Object;
.source "ScheduleActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/fokus/tetrad/ScheduleActivity;->sortDay(Ljava/util/List;)V
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
        "Lru/fokus/tetrad/Schedule$Lesson;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 381
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 381
    check-cast p1, Lru/fokus/tetrad/Schedule$Lesson;

    check-cast p2, Lru/fokus/tetrad/Schedule$Lesson;

    invoke-virtual {p0, p1, p2}, Lru/fokus/tetrad/ScheduleActivity$20;->compare(Lru/fokus/tetrad/Schedule$Lesson;Lru/fokus/tetrad/Schedule$Lesson;)I

    move-result v0

    return v0
.end method

.method public compare(Lru/fokus/tetrad/Schedule$Lesson;Lru/fokus/tetrad/Schedule$Lesson;)I
    .locals 2

    .prologue
    .line 383
    iget-object v0, p1, Lru/fokus/tetrad/Schedule$Lesson;->start:Ljava/lang/String;

    invoke-static {v0}, Lru/fokus/tetrad/Schedule;->minutes(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p2, Lru/fokus/tetrad/Schedule$Lesson;->start:Ljava/lang/String;

    invoke-static {v1}, Lru/fokus/tetrad/Schedule;->minutes(Ljava/lang/String;)I

    move-result v1

    .line 384
    if-eq v0, v1, :cond_1

    if-ge v0, v1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    iget v0, p1, Lru/fokus/tetrad/Schedule$Lesson;->n:I

    iget v1, p2, Lru/fokus/tetrad/Schedule$Lesson;->n:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method
