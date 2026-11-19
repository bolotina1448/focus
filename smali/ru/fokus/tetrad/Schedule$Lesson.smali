.class public Lru/fokus/tetrad/Schedule$Lesson;
.super Ljava/lang/Object;
.source "Schedule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/fokus/tetrad/Schedule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Lesson"
.end annotation


# instance fields
.field public end:Ljava/lang/String;

.field public n:I

.field public room:Ljava/lang/String;

.field public start:Ljava/lang/String;

.field public subject:Ljava/lang/String;

.field public final variants:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lru/fokus/tetrad/Schedule$Variant;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, -0x1

    iput v0, p0, Lru/fokus/tetrad/Schedule$Lesson;->n:I

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lru/fokus/tetrad/Schedule$Lesson;->start:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lru/fokus/tetrad/Schedule$Lesson;->end:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lru/fokus/tetrad/Schedule$Lesson;->subject:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lru/fokus/tetrad/Schedule$Lesson;->room:Ljava/lang/String;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lru/fokus/tetrad/Schedule$Lesson;->variants:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public endMin()I
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lru/fokus/tetrad/Schedule$Lesson;->end:Ljava/lang/String;

    invoke-static {v0}, Lru/fokus/tetrad/Schedule;->minutes(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public startMin()I
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lru/fokus/tetrad/Schedule$Lesson;->start:Ljava/lang/String;

    invoke-static {v0}, Lru/fokus/tetrad/Schedule;->minutes(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
