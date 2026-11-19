.class Lru/fokus/tetrad/MainActivity$15;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/fokus/tetrad/MainActivity;->chooseKind(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/fokus/tetrad/MainActivity;

.field final synthetic val$index:I

.field final synthetic val$kinds:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lru/fokus/tetrad/MainActivity;I[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 243
    iput-object p1, p0, Lru/fokus/tetrad/MainActivity$15;->this$0:Lru/fokus/tetrad/MainActivity;

    iput p2, p0, Lru/fokus/tetrad/MainActivity$15;->val$index:I

    iput-object p3, p0, Lru/fokus/tetrad/MainActivity$15;->val$kinds:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    .line 245
    iget-object v0, p0, Lru/fokus/tetrad/MainActivity$15;->this$0:Lru/fokus/tetrad/MainActivity;

    invoke-static {v0}, Lru/fokus/tetrad/MainActivity;->access$400(Lru/fokus/tetrad/MainActivity;)Lru/fokus/tetrad/Store;

    move-result-object v0

    invoke-virtual {v0}, Lru/fokus/tetrad/Store;->lessonItems()Lorg/json/JSONArray;

    move-result-object v0

    .line 246
    :try_start_0
    iget v1, p0, Lru/fokus/tetrad/MainActivity$15;->val$index:I

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "kind"

    iget-object v3, p0, Lru/fokus/tetrad/MainActivity$15;->val$kinds:[Ljava/lang/String;

    aget-object v3, v3, p2

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "checked"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    :goto_0
    iget-object v1, p0, Lru/fokus/tetrad/MainActivity$15;->this$0:Lru/fokus/tetrad/MainActivity;

    invoke-static {v1}, Lru/fokus/tetrad/MainActivity;->access$400(Lru/fokus/tetrad/MainActivity;)Lru/fokus/tetrad/Store;

    move-result-object v1

    invoke-virtual {v1, v0}, Lru/fokus/tetrad/Store;->setLessonItems(Lorg/json/JSONArray;)V

    .line 248
    iget-object v0, p0, Lru/fokus/tetrad/MainActivity$15;->this$0:Lru/fokus/tetrad/MainActivity;

    invoke-static {v0}, Lru/fokus/tetrad/MainActivity;->access$500(Lru/fokus/tetrad/MainActivity;)V

    .line 249
    return-void

    .line 246
    :catch_0
    move-exception v1

    goto :goto_0
.end method
