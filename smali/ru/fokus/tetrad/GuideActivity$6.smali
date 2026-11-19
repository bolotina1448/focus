.class Lru/fokus/tetrad/GuideActivity$6;
.super Ljava/lang/Object;
.source "GuideActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/fokus/tetrad/GuideActivity;->testAi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/fokus/tetrad/GuideActivity;


# direct methods
.method constructor <init>(Lru/fokus/tetrad/GuideActivity;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lru/fokus/tetrad/GuideActivity$6;->this$0:Lru/fokus/tetrad/GuideActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 166
    :try_start_0
    iget-object v0, p0, Lru/fokus/tetrad/GuideActivity$6;->this$0:Lru/fokus/tetrad/GuideActivity;

    invoke-virtual {v0}, Lru/fokus/tetrad/GuideActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lru/fokus/tetrad/GuideActivity$6;->this$0:Lru/fokus/tetrad/GuideActivity;

    invoke-static {v1}, Lru/fokus/tetrad/GuideActivity;->access$500(Lru/fokus/tetrad/GuideActivity;)Lru/fokus/tetrad/Store;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "\u041e\u0442\u0432\u0435\u0442\u044c \u043e\u0434\u043d\u0438\u043c \u0441\u043b\u043e\u0432\u043e\u043c: \u0433\u043e\u0442\u043e\u0432\u043e"

    invoke-static {v3}, Lru/fokus/tetrad/AiClient;->one(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    const/16 v5, 0x14

    invoke-static/range {v0 .. v5}, Lru/fokus/tetrad/AiClient;->complete(Landroid/content/Context;Lru/fokus/tetrad/Store;Ljava/lang/String;Ljava/util/List;Ljava/util/List;I)Ljava/lang/String;

    .line 167
    const-string v1, "\u0412\u0441\u0451 \u0440\u0430\u0431\u043e\u0442\u0430\u0435\u0442! \u0418\u0418-\u0443\u0447\u0438\u0442\u0435\u043b\u044c \u043d\u0430 \u0441\u0432\u044f\u0437\u0438."
    :try_end_0
    .catch Lru/fokus/tetrad/AiClient$AiException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 168
    const/4 v0, 0x1

    .line 172
    :goto_0
    iget-object v2, p0, Lru/fokus/tetrad/GuideActivity$6;->this$0:Lru/fokus/tetrad/GuideActivity;

    new-instance v3, Lru/fokus/tetrad/GuideActivity$6$1;

    invoke-direct {v3, p0, v1, v0}, Lru/fokus/tetrad/GuideActivity$6$1;-><init>(Lru/fokus/tetrad/GuideActivity$6;Ljava/lang/String;Z)V

    invoke-virtual {v2, v3}, Lru/fokus/tetrad/GuideActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 173
    return-void

    .line 169
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lru/fokus/tetrad/AiClient$AiException;->getMessage()Ljava/lang/String;

    move-result-object v1

    move v0, v6

    .line 170
    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u041e\u0448\u0438\u0431\u043a\u0430: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move v0, v6

    goto :goto_0
.end method
