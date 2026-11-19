.class Lru/fokus/tetrad/MarksActivity$11;
.super Ljava/lang/Object;
.source "MarksActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/fokus/tetrad/MarksActivity;->askAdvice()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/fokus/tetrad/MarksActivity;

.field final synthetic val$prompt:Ljava/lang/String;


# direct methods
.method constructor <init>(Lru/fokus/tetrad/MarksActivity;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 499
    iput-object p1, p0, Lru/fokus/tetrad/MarksActivity$11;->this$0:Lru/fokus/tetrad/MarksActivity;

    iput-object p2, p0, Lru/fokus/tetrad/MarksActivity$11;->val$prompt:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 501
    :try_start_0
    iget-object v0, p0, Lru/fokus/tetrad/MarksActivity$11;->this$0:Lru/fokus/tetrad/MarksActivity;

    invoke-virtual {v0}, Lru/fokus/tetrad/MarksActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lru/fokus/tetrad/MarksActivity$11;->this$0:Lru/fokus/tetrad/MarksActivity;

    invoke-static {v1}, Lru/fokus/tetrad/MarksActivity;->access$1000(Lru/fokus/tetrad/MarksActivity;)Lru/fokus/tetrad/Store;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lru/fokus/tetrad/MarksActivity$11;->val$prompt:Ljava/lang/String;

    invoke-static {v3}, Lru/fokus/tetrad/AiClient;->one(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    const/16 v5, 0x384

    invoke-static/range {v0 .. v5}, Lru/fokus/tetrad/AiClient;->complete(Landroid/content/Context;Lru/fokus/tetrad/Store;Ljava/lang/String;Ljava/util/List;Ljava/util/List;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lru/fokus/tetrad/CheckState;->clean(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lru/fokus/tetrad/AiClient$AiException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 505
    :goto_0
    iget-object v1, p0, Lru/fokus/tetrad/MarksActivity$11;->this$0:Lru/fokus/tetrad/MarksActivity;

    new-instance v2, Lru/fokus/tetrad/MarksActivity$11$1;

    invoke-direct {v2, p0, v0}, Lru/fokus/tetrad/MarksActivity$11$1;-><init>(Lru/fokus/tetrad/MarksActivity$11;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lru/fokus/tetrad/MarksActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 506
    return-void

    .line 502
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lru/fokus/tetrad/AiClient$AiException;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 503
    :catch_1
    move-exception v0

    const-string v0, "\u041d\u0435 \u043f\u043e\u043b\u0443\u0447\u0438\u043b\u043e\u0441\u044c \u043f\u043e\u043b\u0443\u0447\u0438\u0442\u044c \u0441\u043e\u0432\u0435\u0442. \u041f\u043e\u043f\u0440\u043e\u0431\u0443\u0439 \u0435\u0449\u0451 \u0440\u0430\u0437."

    goto :goto_0
.end method
