.class Lru/fokus/tetrad/CheckState$2;
.super Ljava/lang/Object;
.source "CheckState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/fokus/tetrad/CheckState;->runCheck(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/fokus/tetrad/CheckState;

.field final synthetic val$cond:Ljava/util/List;

.field final synthetic val$ctx:Landroid/content/Context;

.field final synthetic val$g:Ljava/lang/String;

.field final synthetic val$gen:I

.field final synthetic val$s:Ljava/lang/String;

.field final synthetic val$sol:Ljava/util/List;

.field final synthetic val$t:Ljava/lang/String;

.field final synthetic val$tb:Ljava/lang/String;


# direct methods
.method constructor <init>(Lru/fokus/tetrad/CheckState;Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 60
    iput-object p1, p0, Lru/fokus/tetrad/CheckState$2;->this$0:Lru/fokus/tetrad/CheckState;

    iput-object p2, p0, Lru/fokus/tetrad/CheckState$2;->val$ctx:Landroid/content/Context;

    iput-object p3, p0, Lru/fokus/tetrad/CheckState$2;->val$sol:Ljava/util/List;

    iput-object p4, p0, Lru/fokus/tetrad/CheckState$2;->val$cond:Ljava/util/List;

    iput-object p5, p0, Lru/fokus/tetrad/CheckState$2;->val$s:Ljava/lang/String;

    iput-object p6, p0, Lru/fokus/tetrad/CheckState$2;->val$g:Ljava/lang/String;

    iput-object p7, p0, Lru/fokus/tetrad/CheckState$2;->val$t:Ljava/lang/String;

    iput-object p8, p0, Lru/fokus/tetrad/CheckState$2;->val$tb:Ljava/lang/String;

    iput p9, p0, Lru/fokus/tetrad/CheckState$2;->val$gen:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v6, 0x0

    const/4 v12, 0x1

    const/4 v7, 0x0

    .line 62
    new-instance v8, Lru/fokus/tetrad/Store;

    iget-object v0, p0, Lru/fokus/tetrad/CheckState$2;->val$ctx:Landroid/content/Context;

    invoke-direct {v8, v0}, Lru/fokus/tetrad/Store;-><init>(Landroid/content/Context;)V

    .line 66
    :try_start_0
    new-instance v9, Ljava/util/ArrayList;

    iget-object v0, p0, Lru/fokus/tetrad/CheckState$2;->val$sol:Ljava/util/List;

    invoke-direct {v9, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 67
    iget-object v0, p0, Lru/fokus/tetrad/CheckState$2;->val$cond:Ljava/util/List;

    invoke-interface {v9, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 68
    iget-object v10, p0, Lru/fokus/tetrad/CheckState$2;->val$ctx:Landroid/content/Context;

    const-string v11, "\u0422\u044b \u2014 \u043e\u043f\u044b\u0442\u043d\u044b\u0439 \u0438 \u0434\u043e\u0431\u0440\u043e\u0436\u0435\u043b\u0430\u0442\u0435\u043b\u044c\u043d\u044b\u0439 \u0448\u043a\u043e\u043b\u044c\u043d\u044b\u0439 \u0443\u0447\u0438\u0442\u0435\u043b\u044c. \u0422\u044b \u043f\u0440\u043e\u0432\u0435\u0440\u044f\u0435\u0448\u044c \u0434\u043e\u043c\u0430\u0448\u043d\u0438\u0435 \u0437\u0430\u0434\u0430\u043d\u0438\u044f \u0438 \u043f\u043e\u043c\u043e\u0433\u0430\u0435\u0448\u044c \u0443\u0447\u0435\u043d\u0438\u043a\u0443 \u043f\u043e\u043d\u044f\u0442\u044c \u0438 \u0438\u0441\u043f\u0440\u0430\u0432\u0438\u0442\u044c \u043e\u0448\u0438\u0431\u043a\u0438. \u041e\u0442\u0432\u0435\u0447\u0430\u0439 \u043f\u043e-\u0440\u0443\u0441\u0441\u043a\u0438."

    iget-object v0, p0, Lru/fokus/tetrad/CheckState$2;->val$s:Ljava/lang/String;

    iget-object v1, p0, Lru/fokus/tetrad/CheckState$2;->val$g:Ljava/lang/String;

    iget-object v2, p0, Lru/fokus/tetrad/CheckState$2;->val$t:Ljava/lang/String;

    iget-object v3, p0, Lru/fokus/tetrad/CheckState$2;->val$tb:Ljava/lang/String;

    iget-object v4, p0, Lru/fokus/tetrad/CheckState$2;->val$sol:Ljava/util/List;

    .line 69
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    iget-object v5, p0, Lru/fokus/tetrad/CheckState$2;->val$cond:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-static/range {v0 .. v5}, Lru/fokus/tetrad/AiClient;->checkPrompt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lru/fokus/tetrad/AiClient;->one(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    const/16 v5, 0xfa0

    move-object v0, v10

    move-object v1, v8

    move-object v2, v11

    move-object v4, v9

    .line 68
    invoke-static/range {v0 .. v5}, Lru/fokus/tetrad/AiClient;->complete(Landroid/content/Context;Lru/fokus/tetrad/Store;Ljava/lang/String;Ljava/util/List;Ljava/util/List;I)Ljava/lang/String;

    move-result-object v0

    .line 70
    invoke-static {v0}, Lru/fokus/tetrad/AiClient;->parseJson(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lru/fokus/tetrad/AiClient$AiException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    move-object v1, v6

    .line 76
    :goto_0
    iget v2, p0, Lru/fokus/tetrad/CheckState$2;->val$gen:I

    iget-object v3, p0, Lru/fokus/tetrad/CheckState$2;->this$0:Lru/fokus/tetrad/CheckState;

    invoke-static {v3}, Lru/fokus/tetrad/CheckState;->access$000(Lru/fokus/tetrad/CheckState;)I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 94
    :goto_1
    return-void

    .line 71
    :catch_0
    move-exception v0

    .line 72
    invoke-virtual {v0}, Lru/fokus/tetrad/AiClient$AiException;->getMessage()Ljava/lang/String;

    move-result-object v1

    move-object v0, v6

    .line 75
    goto :goto_0

    .line 73
    :catch_1
    move-exception v0

    .line 74
    const-string v1, "\u041d\u0435 \u043f\u043e\u043b\u0443\u0447\u0438\u043b\u043e\u0441\u044c \u043f\u043e\u0434\u0433\u043e\u0442\u043e\u0432\u0438\u0442\u044c \u0444\u043e\u0442\u043e. \u041f\u043e\u043f\u0440\u043e\u0431\u0443\u0439 \u0434\u0440\u0443\u0433\u043e\u0435."

    move-object v0, v6

    goto :goto_0

    .line 77
    :cond_0
    iget-object v2, p0, Lru/fokus/tetrad/CheckState$2;->this$0:Lru/fokus/tetrad/CheckState;

    iput-boolean v7, v2, Lru/fokus/tetrad/CheckState;->checking:Z

    .line 78
    if-eqz v1, :cond_1

    iget-object v0, p0, Lru/fokus/tetrad/CheckState$2;->this$0:Lru/fokus/tetrad/CheckState;

    iput-object v1, v0, Lru/fokus/tetrad/CheckState;->status:Ljava/lang/String;

    iget-object v0, p0, Lru/fokus/tetrad/CheckState$2;->this$0:Lru/fokus/tetrad/CheckState;

    iput-boolean v12, v0, Lru/fokus/tetrad/CheckState;->statusError:Z

    .line 93
    :goto_2
    iget-object v0, p0, Lru/fokus/tetrad/CheckState$2;->this$0:Lru/fokus/tetrad/CheckState;

    invoke-static {v0}, Lru/fokus/tetrad/CheckState;->access$100(Lru/fokus/tetrad/CheckState;)V

    goto :goto_1

    .line 79
    :cond_1
    const-string v1, "readable"

    invoke-virtual {v0, v1, v12}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_3

    .line 80
    const-string v1, "unreadable_reason"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 81
    iget-object v1, p0, Lru/fokus/tetrad/CheckState$2;->this$0:Lru/fokus/tetrad/CheckState;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u041d\u0435 \u043f\u043e\u043b\u0443\u0447\u0438\u043b\u043e\u0441\u044c \u0440\u0430\u0437\u043e\u0431\u0440\u0430\u0442\u044c \u0444\u043e\u0442\u043e. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v0, "\u0421\u0444\u043e\u0442\u043e\u0433\u0440\u0430\u0444\u0438\u0440\u0443\u0439 \u0431\u043b\u0438\u0436\u0435 \u0438 \u043f\u0440\u0438 \u0445\u043e\u0440\u043e\u0448\u0435\u043c \u0441\u0432\u0435\u0442\u0435."

    :cond_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lru/fokus/tetrad/CheckState;->status:Ljava/lang/String;

    .line 82
    iget-object v0, p0, Lru/fokus/tetrad/CheckState$2;->this$0:Lru/fokus/tetrad/CheckState;

    iput-boolean v12, v0, Lru/fokus/tetrad/CheckState;->statusError:Z

    goto :goto_2

    .line 84
    :cond_3
    iget-object v1, p0, Lru/fokus/tetrad/CheckState$2;->this$0:Lru/fokus/tetrad/CheckState;

    iput-object v0, v1, Lru/fokus/tetrad/CheckState;->report:Lorg/json/JSONObject;

    .line 85
    iget-object v2, p0, Lru/fokus/tetrad/CheckState$2;->this$0:Lru/fokus/tetrad/CheckState;

    iget-object v1, p0, Lru/fokus/tetrad/CheckState$2;->val$s:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "subject"

    const-string v3, ""

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_3
    iput-object v1, v2, Lru/fokus/tetrad/CheckState;->reportSubject:Ljava/lang/String;

    iget-object v1, p0, Lru/fokus/tetrad/CheckState$2;->this$0:Lru/fokus/tetrad/CheckState;

    iget-object v2, p0, Lru/fokus/tetrad/CheckState$2;->val$g:Ljava/lang/String;

    iput-object v2, v1, Lru/fokus/tetrad/CheckState;->reportGrade:Ljava/lang/String;

    iget-object v1, p0, Lru/fokus/tetrad/CheckState$2;->this$0:Lru/fokus/tetrad/CheckState;

    iget-object v2, p0, Lru/fokus/tetrad/CheckState$2;->val$t:Ljava/lang/String;

    iput-object v2, v1, Lru/fokus/tetrad/CheckState;->reportTask:Ljava/lang/String;

    iget-object v1, p0, Lru/fokus/tetrad/CheckState$2;->this$0:Lru/fokus/tetrad/CheckState;

    iget-object v2, p0, Lru/fokus/tetrad/CheckState$2;->val$tb:Ljava/lang/String;

    iput-object v2, v1, Lru/fokus/tetrad/CheckState;->reportTextbook:Ljava/lang/String;

    .line 86
    iget-object v1, p0, Lru/fokus/tetrad/CheckState$2;->this$0:Lru/fokus/tetrad/CheckState;

    iget-object v1, v1, Lru/fokus/tetrad/CheckState;->chat:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 87
    iget-object v1, p0, Lru/fokus/tetrad/CheckState$2;->this$0:Lru/fokus/tetrad/CheckState;

    const-string v2, ""

    iput-object v2, v1, Lru/fokus/tetrad/CheckState;->status:Ljava/lang/String;

    .line 88
    iget-object v1, p0, Lru/fokus/tetrad/CheckState$2;->this$0:Lru/fokus/tetrad/CheckState;

    iput-boolean v7, v1, Lru/fokus/tetrad/CheckState;->statusError:Z

    .line 89
    const-string v1, "grade"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v1, v2

    .line 90
    const-string v2, "score"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "score"

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v0, v2

    move v2, v0

    .line 91
    :goto_4
    const/4 v0, 0x2

    if-lt v1, v0, :cond_6

    const/4 v0, 0x5

    if-gt v1, v0, :cond_6

    move v0, v1

    :goto_5
    iget-object v1, p0, Lru/fokus/tetrad/CheckState$2;->this$0:Lru/fokus/tetrad/CheckState;

    iget-object v1, v1, Lru/fokus/tetrad/CheckState;->reportSubject:Ljava/lang/String;

    invoke-virtual {v8, v0, v2, v1}, Lru/fokus/tetrad/Store;->setMarkForLast(IILjava/lang/String;)V

    goto/16 :goto_2

    .line 85
    :cond_4
    iget-object v1, p0, Lru/fokus/tetrad/CheckState$2;->val$s:Ljava/lang/String;

    goto :goto_3

    .line 90
    :cond_5
    const/4 v0, -0x1

    move v2, v0

    goto :goto_4

    :cond_6
    move v0, v7

    .line 91
    goto :goto_5
.end method
