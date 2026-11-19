.class Lru/fokus/tetrad/AppPickerActivity$4;
.super Ljava/lang/Object;
.source "AppPickerActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/fokus/tetrad/AppPickerActivity;->load()V
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
        "Lru/fokus/tetrad/AppPickerActivity$App;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/fokus/tetrad/AppPickerActivity;


# direct methods
.method constructor <init>(Lru/fokus/tetrad/AppPickerActivity;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lru/fokus/tetrad/AppPickerActivity$4;->this$0:Lru/fokus/tetrad/AppPickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 112
    check-cast p1, Lru/fokus/tetrad/AppPickerActivity$App;

    check-cast p2, Lru/fokus/tetrad/AppPickerActivity$App;

    invoke-virtual {p0, p1, p2}, Lru/fokus/tetrad/AppPickerActivity$4;->compare(Lru/fokus/tetrad/AppPickerActivity$App;Lru/fokus/tetrad/AppPickerActivity$App;)I

    move-result v0

    return v0
.end method

.method public compare(Lru/fokus/tetrad/AppPickerActivity$App;Lru/fokus/tetrad/AppPickerActivity$App;)I
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 114
    iget-object v2, p0, Lru/fokus/tetrad/AppPickerActivity$4;->this$0:Lru/fokus/tetrad/AppPickerActivity;

    invoke-static {v2}, Lru/fokus/tetrad/AppPickerActivity;->access$300(Lru/fokus/tetrad/AppPickerActivity;)Ljava/util/Set;

    move-result-object v2

    iget-object v3, p1, Lru/fokus/tetrad/AppPickerActivity$App;->pkg:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    iget-object v3, p0, Lru/fokus/tetrad/AppPickerActivity$4;->this$0:Lru/fokus/tetrad/AppPickerActivity;

    invoke-static {v3}, Lru/fokus/tetrad/AppPickerActivity;->access$300(Lru/fokus/tetrad/AppPickerActivity;)Ljava/util/Set;

    move-result-object v3

    iget-object v4, p2, Lru/fokus/tetrad/AppPickerActivity$App;->pkg:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    .line 115
    if-eq v2, v3, :cond_2

    if-eqz v2, :cond_1

    .line 117
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 115
    goto :goto_0

    .line 116
    :cond_2
    iget-boolean v2, p1, Lru/fokus/tetrad/AppPickerActivity$App;->known:Z

    iget-boolean v3, p2, Lru/fokus/tetrad/AppPickerActivity$App;->known:Z

    if-eq v2, v3, :cond_3

    iget-boolean v2, p1, Lru/fokus/tetrad/AppPickerActivity$App;->known:Z

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 117
    :cond_3
    iget-object v0, p1, Lru/fokus/tetrad/AppPickerActivity$App;->label:Ljava/lang/String;

    iget-object v1, p2, Lru/fokus/tetrad/AppPickerActivity$App;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method
