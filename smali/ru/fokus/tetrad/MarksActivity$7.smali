.class Lru/fokus/tetrad/MarksActivity$7;
.super Ljava/lang/Object;
.source "MarksActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/fokus/tetrad/MarksActivity;->renderBySubject()V
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


# instance fields
.field final synthetic this$0:Lru/fokus/tetrad/MarksActivity;


# direct methods
.method constructor <init>(Lru/fokus/tetrad/MarksActivity;)V
    .locals 0

    .prologue
    .line 276
    iput-object p1, p0, Lru/fokus/tetrad/MarksActivity$7;->this$0:Lru/fokus/tetrad/MarksActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 276
    check-cast p1, Lru/fokus/tetrad/Grades$Subject;

    check-cast p2, Lru/fokus/tetrad/Grades$Subject;

    invoke-virtual {p0, p1, p2}, Lru/fokus/tetrad/MarksActivity$7;->compare(Lru/fokus/tetrad/Grades$Subject;Lru/fokus/tetrad/Grades$Subject;)I

    move-result v0

    return v0
.end method

.method public compare(Lru/fokus/tetrad/Grades$Subject;Lru/fokus/tetrad/Grades$Subject;)I
    .locals 2

    .prologue
    .line 277
    iget-object v0, p1, Lru/fokus/tetrad/Grades$Subject;->name:Ljava/lang/String;

    iget-object v1, p2, Lru/fokus/tetrad/Grades$Subject;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
