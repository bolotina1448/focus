.class Lru/fokus/tetrad/MainActivity$16;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/fokus/tetrad/MainActivity;->typeTask(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/fokus/tetrad/MainActivity;

.field final synthetic val$index:I

.field final synthetic val$subj:Landroid/widget/EditText;

.field final synthetic val$text:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lru/fokus/tetrad/MainActivity;Landroid/widget/EditText;Landroid/widget/EditText;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 272
    iput-object p1, p0, Lru/fokus/tetrad/MainActivity$16;->this$0:Lru/fokus/tetrad/MainActivity;

    iput-object p2, p0, Lru/fokus/tetrad/MainActivity$16;->val$text:Landroid/widget/EditText;

    iput-object p3, p0, Lru/fokus/tetrad/MainActivity$16;->val$subj:Landroid/widget/EditText;

    iput p4, p0, Lru/fokus/tetrad/MainActivity$16;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    .prologue
    .line 273
    iget-object v0, p0, Lru/fokus/tetrad/MainActivity$16;->val$text:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 274
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 283
    :goto_0
    return-void

    .line 275
    :cond_0
    iget-object v1, p0, Lru/fokus/tetrad/MainActivity$16;->this$0:Lru/fokus/tetrad/MainActivity;

    invoke-static {v1}, Lru/fokus/tetrad/MainActivity;->access$400(Lru/fokus/tetrad/MainActivity;)Lru/fokus/tetrad/Store;

    move-result-object v1

    invoke-virtual {v1}, Lru/fokus/tetrad/Store;->lessonItems()Lorg/json/JSONArray;

    move-result-object v1

    .line 276
    iget-object v2, p0, Lru/fokus/tetrad/MainActivity$16;->val$subj:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "text"

    invoke-static {v2, v0, v3}, Lru/fokus/tetrad/Homework;->item(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 277
    const-string v3, "external"

    const-string v4, "kind"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :try_start_0
    const-string v3, "kind"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " \u0437\u0430\u0434\u0430\u0447\u0430"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lru/fokus/tetrad/Homework;->guess(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 278
    :cond_1
    :goto_1
    iget v0, p0, Lru/fokus/tetrad/MainActivity$16;->val$index:I

    if-ltz v0, :cond_2

    iget v0, p0, Lru/fokus/tetrad/MainActivity$16;->val$index:I

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_2

    :try_start_1
    iget v0, p0, Lru/fokus/tetrad/MainActivity$16;->val$index:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 280
    :goto_2
    iget-object v0, p0, Lru/fokus/tetrad/MainActivity$16;->this$0:Lru/fokus/tetrad/MainActivity;

    invoke-static {v0}, Lru/fokus/tetrad/MainActivity;->access$400(Lru/fokus/tetrad/MainActivity;)Lru/fokus/tetrad/Store;

    move-result-object v0

    invoke-virtual {v0, v1}, Lru/fokus/tetrad/Store;->setLessonItems(Lorg/json/JSONArray;)V

    .line 281
    iget-object v0, p0, Lru/fokus/tetrad/MainActivity$16;->this$0:Lru/fokus/tetrad/MainActivity;

    invoke-static {v0}, Lru/fokus/tetrad/MainActivity;->access$500(Lru/fokus/tetrad/MainActivity;)V

    .line 282
    iget-object v0, p0, Lru/fokus/tetrad/MainActivity$16;->this$0:Lru/fokus/tetrad/MainActivity;

    invoke-static {v0}, Lru/fokus/tetrad/MainActivity;->access$1000(Lru/fokus/tetrad/MainActivity;)V

    goto :goto_0

    .line 279
    :cond_2
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2

    .line 278
    :catch_0
    move-exception v0

    goto :goto_2

    .line 277
    :catch_1
    move-exception v0

    goto :goto_1
.end method
