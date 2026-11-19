.class Lru/fokus/tetrad/MainActivity$17$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/fokus/tetrad/MainActivity$17;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lru/fokus/tetrad/MainActivity$17;


# direct methods
.method constructor <init>(Lru/fokus/tetrad/MainActivity$17;)V
    .locals 0

    .prologue
    .line 297
    iput-object p1, p0, Lru/fokus/tetrad/MainActivity$17$1;->this$1:Lru/fokus/tetrad/MainActivity$17;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 298
    iget-object v0, p0, Lru/fokus/tetrad/MainActivity$17$1;->this$1:Lru/fokus/tetrad/MainActivity$17;

    iget-object v0, v0, Lru/fokus/tetrad/MainActivity$17;->this$0:Lru/fokus/tetrad/MainActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lru/fokus/tetrad/MainActivity;->access$1102(Lru/fokus/tetrad/MainActivity;Z)Z

    .line 300
    iget-object v0, p0, Lru/fokus/tetrad/MainActivity$17$1;->this$1:Lru/fokus/tetrad/MainActivity$17;

    iget-object v0, v0, Lru/fokus/tetrad/MainActivity$17;->this$0:Lru/fokus/tetrad/MainActivity;

    invoke-static {v0}, Lru/fokus/tetrad/MainActivity;->access$400(Lru/fokus/tetrad/MainActivity;)Lru/fokus/tetrad/Store;

    move-result-object v0

    invoke-virtual {v0}, Lru/fokus/tetrad/Store;->lessonItems()Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    iget-object v1, p0, Lru/fokus/tetrad/MainActivity$17$1;->this$1:Lru/fokus/tetrad/MainActivity$17;

    iget-object v1, v1, Lru/fokus/tetrad/MainActivity$17;->val$items:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lru/fokus/tetrad/MainActivity$17$1;->this$1:Lru/fokus/tetrad/MainActivity$17;

    iget-object v0, v0, Lru/fokus/tetrad/MainActivity$17;->this$0:Lru/fokus/tetrad/MainActivity;

    invoke-static {v0}, Lru/fokus/tetrad/MainActivity;->access$400(Lru/fokus/tetrad/MainActivity;)Lru/fokus/tetrad/Store;

    move-result-object v0

    iget-object v1, p0, Lru/fokus/tetrad/MainActivity$17$1;->this$1:Lru/fokus/tetrad/MainActivity$17;

    iget-object v1, v1, Lru/fokus/tetrad/MainActivity$17;->val$items:Lorg/json/JSONArray;

    invoke-virtual {v0, v1}, Lru/fokus/tetrad/Store;->setLessonItems(Lorg/json/JSONArray;)V

    .line 301
    :cond_0
    iget-object v0, p0, Lru/fokus/tetrad/MainActivity$17$1;->this$1:Lru/fokus/tetrad/MainActivity$17;

    iget-object v0, v0, Lru/fokus/tetrad/MainActivity$17;->this$0:Lru/fokus/tetrad/MainActivity;

    invoke-static {v0}, Lru/fokus/tetrad/MainActivity;->access$500(Lru/fokus/tetrad/MainActivity;)V

    .line 302
    return-void
.end method
