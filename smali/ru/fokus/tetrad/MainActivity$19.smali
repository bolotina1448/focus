.class Lru/fokus/tetrad/MainActivity$19;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lru/fokus/tetrad/Photos$Done;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/fokus/tetrad/MainActivity;->onActivityResult(IILandroid/content/Intent;)V
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
    .line 388
    iput-object p1, p0, Lru/fokus/tetrad/MainActivity$19;->this$0:Lru/fokus/tetrad/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public on(Ljava/util/List;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 389
    iget-object v0, p0, Lru/fokus/tetrad/MainActivity$19;->this$0:Lru/fokus/tetrad/MainActivity;

    invoke-static {v0}, Lru/fokus/tetrad/MainActivity;->access$400(Lru/fokus/tetrad/MainActivity;)Lru/fokus/tetrad/Store;

    move-result-object v0

    invoke-virtual {v0}, Lru/fokus/tetrad/Store;->lessonPhotos()Ljava/util/List;

    move-result-object v0

    .line 390
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 391
    iget-object v1, p0, Lru/fokus/tetrad/MainActivity$19;->this$0:Lru/fokus/tetrad/MainActivity;

    invoke-static {v1}, Lru/fokus/tetrad/MainActivity;->access$400(Lru/fokus/tetrad/MainActivity;)Lru/fokus/tetrad/Store;

    move-result-object v1

    invoke-virtual {v1, v0}, Lru/fokus/tetrad/Store;->setLessonPhotos(Ljava/util/List;)V

    .line 392
    iget-object v0, p0, Lru/fokus/tetrad/MainActivity$19;->this$0:Lru/fokus/tetrad/MainActivity;

    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    invoke-static {v0, p2}, Lru/fokus/tetrad/MainActivity;->access$1502(Lru/fokus/tetrad/MainActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 393
    iget-object v0, p0, Lru/fokus/tetrad/MainActivity$19;->this$0:Lru/fokus/tetrad/MainActivity;

    invoke-static {v0}, Lru/fokus/tetrad/MainActivity;->access$900(Lru/fokus/tetrad/MainActivity;)I

    move-result v0

    if-ltz v0, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 394
    iget-object v0, p0, Lru/fokus/tetrad/MainActivity$19;->this$0:Lru/fokus/tetrad/MainActivity;

    invoke-static {v0}, Lru/fokus/tetrad/MainActivity;->access$400(Lru/fokus/tetrad/MainActivity;)Lru/fokus/tetrad/Store;

    move-result-object v0

    invoke-virtual {v0}, Lru/fokus/tetrad/Store;->lessonItems()Lorg/json/JSONArray;

    move-result-object v0

    .line 395
    iget-object v1, p0, Lru/fokus/tetrad/MainActivity$19;->this$0:Lru/fokus/tetrad/MainActivity;

    invoke-static {v1}, Lru/fokus/tetrad/MainActivity;->access$900(Lru/fokus/tetrad/MainActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 396
    if-eqz v1, :cond_1

    :try_start_0
    const-string v2, "kind"

    const-string v3, "written"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "text"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "text"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " (\u0437\u0430\u0434\u0430\u043d\u0438\u0435 \u2014 \u043d\u0430 \u0444\u043e\u0442\u043e)"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "checked"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 397
    :cond_1
    :goto_0
    iget-object v1, p0, Lru/fokus/tetrad/MainActivity$19;->this$0:Lru/fokus/tetrad/MainActivity;

    invoke-static {v1}, Lru/fokus/tetrad/MainActivity;->access$400(Lru/fokus/tetrad/MainActivity;)Lru/fokus/tetrad/Store;

    move-result-object v1

    invoke-virtual {v1, v0}, Lru/fokus/tetrad/Store;->setLessonItems(Lorg/json/JSONArray;)V

    .line 399
    :cond_2
    iget-object v0, p0, Lru/fokus/tetrad/MainActivity$19;->this$0:Lru/fokus/tetrad/MainActivity;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lru/fokus/tetrad/MainActivity;->access$902(Lru/fokus/tetrad/MainActivity;I)I

    .line 400
    iget-object v0, p0, Lru/fokus/tetrad/MainActivity$19;->this$0:Lru/fokus/tetrad/MainActivity;

    invoke-static {v0}, Lru/fokus/tetrad/MainActivity;->access$500(Lru/fokus/tetrad/MainActivity;)V

    .line 401
    return-void

    .line 396
    :catch_0
    move-exception v1

    goto :goto_0
.end method
