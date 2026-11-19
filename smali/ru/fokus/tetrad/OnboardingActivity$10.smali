.class Lru/fokus/tetrad/OnboardingActivity$10;
.super Ljava/lang/Object;
.source "OnboardingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/fokus/tetrad/OnboardingActivity;->testKey()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/fokus/tetrad/OnboardingActivity;


# direct methods
.method constructor <init>(Lru/fokus/tetrad/OnboardingActivity;)V
    .locals 0

    .prologue
    .line 205
    iput-object p1, p0, Lru/fokus/tetrad/OnboardingActivity$10;->this$0:Lru/fokus/tetrad/OnboardingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 208
    :try_start_0
    iget-object v0, p0, Lru/fokus/tetrad/OnboardingActivity$10;->this$0:Lru/fokus/tetrad/OnboardingActivity;

    invoke-virtual {v0}, Lru/fokus/tetrad/OnboardingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lru/fokus/tetrad/OnboardingActivity$10;->this$0:Lru/fokus/tetrad/OnboardingActivity;

    invoke-static {v1}, Lru/fokus/tetrad/OnboardingActivity;->access$1200(Lru/fokus/tetrad/OnboardingActivity;)Lru/fokus/tetrad/Store;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "\u041e\u0442\u0432\u0435\u0442\u044c \u043e\u0434\u043d\u0438\u043c \u0441\u043b\u043e\u0432\u043e\u043c: \u0433\u043e\u0442\u043e\u0432\u043e"

    invoke-static {v3}, Lru/fokus/tetrad/AiClient;->one(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    const/16 v5, 0x14

    invoke-static/range {v0 .. v5}, Lru/fokus/tetrad/AiClient;->complete(Landroid/content/Context;Lru/fokus/tetrad/Store;Ljava/lang/String;Ljava/util/List;Ljava/util/List;I)Ljava/lang/String;

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u0412\u0441\u0451 \u0440\u0430\u0431\u043e\u0442\u0430\u0435\u0442! \u0418\u0418-\u0443\u0447\u0438\u0442\u0435\u043b\u044c \u043f\u043e\u0434\u043a\u043b\u044e\u0447\u0451\u043d ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lru/fokus/tetrad/OnboardingActivity$10;->this$0:Lru/fokus/tetrad/OnboardingActivity;

    invoke-static {v1}, Lru/fokus/tetrad/OnboardingActivity;->access$1200(Lru/fokus/tetrad/OnboardingActivity;)Lru/fokus/tetrad/Store;

    move-result-object v1

    invoke-virtual {v1}, Lru/fokus/tetrad/Store;->aiName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lru/fokus/tetrad/AiClient$AiException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 210
    const/4 v0, 0x1

    .line 214
    :goto_0
    iget-object v2, p0, Lru/fokus/tetrad/OnboardingActivity$10;->this$0:Lru/fokus/tetrad/OnboardingActivity;

    new-instance v3, Lru/fokus/tetrad/OnboardingActivity$10$1;

    invoke-direct {v3, p0, v1, v0}, Lru/fokus/tetrad/OnboardingActivity$10$1;-><init>(Lru/fokus/tetrad/OnboardingActivity$10;Ljava/lang/String;Z)V

    invoke-virtual {v2, v3}, Lru/fokus/tetrad/OnboardingActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 221
    return-void

    .line 211
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lru/fokus/tetrad/AiClient$AiException;->getMessage()Ljava/lang/String;

    move-result-object v1

    move v0, v6

    .line 212
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
