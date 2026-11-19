.class Lru/fokus/tetrad/MainActivity$5;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lru/fokus/tetrad/Photos$Remove;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/fokus/tetrad/MainActivity;->render()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/fokus/tetrad/MainActivity;


# direct methods
.method constructor <init>(Lru/fokus/tetrad/MainActivity;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lru/fokus/tetrad/MainActivity$5;->this$0:Lru/fokus/tetrad/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public on(Ljava/io/File;)V
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lru/fokus/tetrad/MainActivity$5;->this$0:Lru/fokus/tetrad/MainActivity;

    invoke-static {v0}, Lru/fokus/tetrad/MainActivity;->access$400(Lru/fokus/tetrad/MainActivity;)Lru/fokus/tetrad/Store;

    move-result-object v0

    invoke-virtual {v0}, Lru/fokus/tetrad/Store;->lessonPhotos()Ljava/util/List;

    move-result-object v0

    .line 131
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 132
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 133
    iget-object v1, p0, Lru/fokus/tetrad/MainActivity$5;->this$0:Lru/fokus/tetrad/MainActivity;

    invoke-static {v1}, Lru/fokus/tetrad/MainActivity;->access$400(Lru/fokus/tetrad/MainActivity;)Lru/fokus/tetrad/Store;

    move-result-object v1

    invoke-virtual {v1, v0}, Lru/fokus/tetrad/Store;->setLessonPhotos(Ljava/util/List;)V

    .line 134
    iget-object v0, p0, Lru/fokus/tetrad/MainActivity$5;->this$0:Lru/fokus/tetrad/MainActivity;

    invoke-static {v0}, Lru/fokus/tetrad/MainActivity;->access$500(Lru/fokus/tetrad/MainActivity;)V

    .line 135
    return-void
.end method
