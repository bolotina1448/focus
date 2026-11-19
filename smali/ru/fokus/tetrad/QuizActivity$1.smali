.class Lru/fokus/tetrad/QuizActivity$1;
.super Ljava/lang/Object;
.source "QuizActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/fokus/tetrad/QuizActivity;->load()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/fokus/tetrad/QuizActivity;

.field final synthetic val$gen:I

.field final synthetic val$prompt:Ljava/lang/String;


# direct methods
.method constructor <init>(Lru/fokus/tetrad/QuizActivity;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 72
    iput-object p1, p0, Lru/fokus/tetrad/QuizActivity$1;->this$0:Lru/fokus/tetrad/QuizActivity;

    iput-object p2, p0, Lru/fokus/tetrad/QuizActivity$1;->val$prompt:Ljava/lang/String;

    iput p3, p0, Lru/fokus/tetrad/QuizActivity$1;->val$gen:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v6, 0x0

    .line 73
    .line 76
    :try_start_0
    iget-object v0, p0, Lru/fokus/tetrad/QuizActivity$1;->this$0:Lru/fokus/tetrad/QuizActivity;

    invoke-virtual {v0}, Lru/fokus/tetrad/QuizActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lru/fokus/tetrad/QuizActivity$1;->this$0:Lru/fokus/tetrad/QuizActivity;

    invoke-static {v1}, Lru/fokus/tetrad/QuizActivity;->access$000(Lru/fokus/tetrad/QuizActivity;)Lru/fokus/tetrad/Store;

    move-result-object v1

    const-string v2, "\u0422\u044b \u2014 \u043e\u043f\u044b\u0442\u043d\u044b\u0439 \u0438 \u0434\u043e\u0431\u0440\u043e\u0436\u0435\u043b\u0430\u0442\u0435\u043b\u044c\u043d\u044b\u0439 \u0448\u043a\u043e\u043b\u044c\u043d\u044b\u0439 \u0443\u0447\u0438\u0442\u0435\u043b\u044c. \u0422\u044b \u043f\u0440\u043e\u0432\u0435\u0440\u044f\u0435\u0448\u044c \u0434\u043e\u043c\u0430\u0448\u043d\u0438\u0435 \u0437\u0430\u0434\u0430\u043d\u0438\u044f \u0438 \u043f\u043e\u043c\u043e\u0433\u0430\u0435\u0448\u044c \u0443\u0447\u0435\u043d\u0438\u043a\u0443 \u043f\u043e\u043d\u044f\u0442\u044c \u0438 \u0438\u0441\u043f\u0440\u0430\u0432\u0438\u0442\u044c \u043e\u0448\u0438\u0431\u043a\u0438. \u041e\u0442\u0432\u0435\u0447\u0430\u0439 \u043f\u043e-\u0440\u0443\u0441\u0441\u043a\u0438."

    iget-object v3, p0, Lru/fokus/tetrad/QuizActivity$1;->val$prompt:Ljava/lang/String;

    invoke-static {v3}, Lru/fokus/tetrad/AiClient;->one(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    const/16 v5, 0x9c4

    invoke-static/range {v0 .. v5}, Lru/fokus/tetrad/AiClient;->complete(Landroid/content/Context;Lru/fokus/tetrad/Store;Ljava/lang/String;Ljava/util/List;Ljava/util/List;I)Ljava/lang/String;

    move-result-object v0

    .line 77
    invoke-static {v0}, Lru/fokus/tetrad/AiClient;->parseJson(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 78
    const-string v1, "topic"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lru/fokus/tetrad/AiClient$AiException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 79
    :try_start_1
    const-string v2, "questions"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 80
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V
    :try_end_1
    .catch Lru/fokus/tetrad/AiClient$AiException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 81
    if-eqz v2, :cond_2

    const/4 v0, 0x0

    :goto_0
    :try_start_2
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 82
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 83
    if-nez v4, :cond_1

    .line 81
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 84
    :cond_1
    const-string v5, "options"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 85
    const-string v7, "answer"

    const/4 v8, -0x1

    invoke-virtual {v4, v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    .line 86
    const-string v8, "q"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v8

    const/4 v9, 0x2

    if-lt v8, v9, :cond_0

    if-ltz v7, :cond_0

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v7, v5, :cond_0

    .line 87
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_2
    .catch Lru/fokus/tetrad/AiClient$AiException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_1

    .line 90
    :catch_0
    move-exception v2

    move-object v0, v1

    :goto_2
    invoke-virtual {v2}, Lru/fokus/tetrad/AiClient$AiException;->getMessage()Ljava/lang/String;

    move-result-object v2

    move-object v1, v0

    .line 93
    :goto_3
    iget-object v0, p0, Lru/fokus/tetrad/QuizActivity$1;->this$0:Lru/fokus/tetrad/QuizActivity;

    new-instance v4, Lru/fokus/tetrad/QuizActivity$1$1;

    invoke-direct {v4, p0, v2, v3, v1}, Lru/fokus/tetrad/QuizActivity$1$1;-><init>(Lru/fokus/tetrad/QuizActivity$1;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lru/fokus/tetrad/QuizActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 100
    return-void

    .line 89
    :cond_2
    :try_start_3
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "\u041d\u0435 \u043f\u043e\u043b\u0443\u0447\u0438\u043b\u043e\u0441\u044c \u0441\u043e\u0441\u0442\u0430\u0432\u0438\u0442\u044c \u0432\u043e\u043f\u0440\u043e\u0441\u044b. \u041f\u043e\u043f\u0440\u043e\u0431\u0443\u0439 \u0435\u0449\u0451 \u0440\u0430\u0437."
    :try_end_3
    .catch Lru/fokus/tetrad/AiClient$AiException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :goto_4
    move-object v2, v0

    .line 91
    goto :goto_3

    :catch_1
    move-exception v0

    move-object v0, v6

    move-object v3, v6

    :goto_5
    const-string v2, "\u041d\u0435 \u043f\u043e\u043b\u0443\u0447\u0438\u043b\u043e\u0441\u044c \u0441\u043e\u0441\u0442\u0430\u0432\u0438\u0442\u044c \u0432\u043e\u043f\u0440\u043e\u0441\u044b. \u041f\u043e\u043f\u0440\u043e\u0431\u0443\u0439 \u0435\u0449\u0451 \u0440\u0430\u0437."

    move-object v1, v0

    goto :goto_3

    :catch_2
    move-exception v0

    move-object v0, v1

    move-object v3, v6

    goto :goto_5

    :catch_3
    move-exception v0

    move-object v0, v1

    goto :goto_5

    .line 90
    :catch_4
    move-exception v1

    move-object v2, v1

    move-object v0, v6

    move-object v3, v6

    goto :goto_2

    :catch_5
    move-exception v2

    move-object v0, v1

    move-object v3, v6

    goto :goto_2

    :cond_3
    move-object v0, v6

    goto :goto_4
.end method
