.class Lru/fokus/tetrad/MarksActivity$9;
.super Ljava/lang/Object;
.source "MarksActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/fokus/tetrad/MarksActivity;->renderByDate()V
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


# instance fields
.field final synthetic this$0:Lru/fokus/tetrad/MarksActivity;


# direct methods
.method constructor <init>(Lru/fokus/tetrad/MarksActivity;)V
    .locals 0

    .prologue
    .line 316
    iput-object p1, p0, Lru/fokus/tetrad/MarksActivity$9;->this$0:Lru/fokus/tetrad/MarksActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 316
    check-cast p1, Lru/fokus/tetrad/Mesh$Mark;

    check-cast p2, Lru/fokus/tetrad/Mesh$Mark;

    invoke-virtual {p0, p1, p2}, Lru/fokus/tetrad/MarksActivity$9;->compare(Lru/fokus/tetrad/Mesh$Mark;Lru/fokus/tetrad/Mesh$Mark;)I

    move-result v0

    return v0
.end method

.method public compare(Lru/fokus/tetrad/Mesh$Mark;Lru/fokus/tetrad/Mesh$Mark;)I
    .locals 2

    .prologue
    .line 317
    iget-object v0, p2, Lru/fokus/tetrad/Mesh$Mark;->date:Ljava/lang/String;

    iget-object v1, p1, Lru/fokus/tetrad/Mesh$Mark;->date:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
