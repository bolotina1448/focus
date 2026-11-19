.class public Lru/fokus/tetrad/Grades$Subject;
.super Ljava/lang/Object;
.source "Grades.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/fokus/tetrad/Grades;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Subject"
.end annotation


# instance fields
.field public avg:D

.field public count:I

.field public earlyAvg:D

.field public final marks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lru/fokus/tetrad/Mesh$Mark;",
            ">;"
        }
    .end annotation
.end field

.field public name:Ljava/lang/String;

.field public reason:Ljava/lang/String;

.field public recentAvg:D

.field public status:I

.field public threes:I

.field public twos:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lru/fokus/tetrad/Grades$Subject;->reason:Ljava/lang/String;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lru/fokus/tetrad/Grades$Subject;->marks:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public trend()D
    .locals 4

    .prologue
    .line 25
    iget v0, p0, Lru/fokus/tetrad/Grades$Subject;->count:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    iget-wide v0, p0, Lru/fokus/tetrad/Grades$Subject;->recentAvg:D

    iget-wide v2, p0, Lru/fokus/tetrad/Grades$Subject;->earlyAvg:D

    sub-double/2addr v0, v2

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method
