.class public final Lru/fokus/tetrad/AiClient;
.super Ljava/lang/Object;
.source "AiClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/fokus/tetrad/AiClient$AiException;
    }
.end annotation


# static fields
.field static final GIGA_API:Ljava/lang/String; = "https://api.giga.chat/v1"

.field static final GIGA_AUTH:Ljava/lang/String; = "https://ngw.devices.sberbank.ru:9443/api/v2/oauth"

.field public static final GIGA_MODELS:[[Ljava/lang/String;

.field public static final PROVIDER_GIGACHAT:Ljava/lang/String; = "gigachat"

.field public static final PROVIDER_OPENAI:Ljava/lang/String; = "openai"

.field public static final PROVIDER_ZAI:Ljava/lang/String; = "zai"

.field public static final TEACHER:Ljava/lang/String; = "\u0422\u044b \u2014 \u043e\u043f\u044b\u0442\u043d\u044b\u0439 \u0438 \u0434\u043e\u0431\u0440\u043e\u0436\u0435\u043b\u0430\u0442\u0435\u043b\u044c\u043d\u044b\u0439 \u0448\u043a\u043e\u043b\u044c\u043d\u044b\u0439 \u0443\u0447\u0438\u0442\u0435\u043b\u044c. \u0422\u044b \u043f\u0440\u043e\u0432\u0435\u0440\u044f\u0435\u0448\u044c \u0434\u043e\u043c\u0430\u0448\u043d\u0438\u0435 \u0437\u0430\u0434\u0430\u043d\u0438\u044f \u0438 \u043f\u043e\u043c\u043e\u0433\u0430\u0435\u0448\u044c \u0443\u0447\u0435\u043d\u0438\u043a\u0443 \u043f\u043e\u043d\u044f\u0442\u044c \u0438 \u0438\u0441\u043f\u0440\u0430\u0432\u0438\u0442\u044c \u043e\u0448\u0438\u0431\u043a\u0438. \u041e\u0442\u0432\u0435\u0447\u0430\u0439 \u043f\u043e-\u0440\u0443\u0441\u0441\u043a\u0438."

.field public static final ZAI_BASE:Ljava/lang/String; = "https://api.z.ai/api/paas/v4"

.field private static gigaToken:Ljava/lang/String;

.field private static gigaTokenExp:J

.field private static gigaTokenKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 49
    new-array v0, v5, [[Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "GigaChat-2-Max"

    aput-object v2, v1, v3

    const-string v2, "GigaChat 2 Max"

    aput-object v2, v1, v4

    const-string v2, "\u0442\u043e\u0447\u043d\u0435\u0435 \u0432\u0441\u0435\u0433\u043e"

    aput-object v2, v1, v5

    aput-object v1, v0, v3

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "GigaChat-2-Pro"

    aput-object v2, v1, v3

    const-string v2, "GigaChat 2 Pro"

    aput-object v2, v1, v4

    const-string v2, "\u0431\u044b\u0441\u0442\u0440\u0435\u0435, \u0431\u0435\u0441\u043f\u043b\u0430\u0442\u043d\u044b\u0439 \u043f\u0430\u043a\u0435\u0442 \u0431\u043e\u043b\u044c\u0448\u0435"

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    sput-object v0, Lru/fokus/tetrad/AiClient;->GIGA_MODELS:[[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkPrompt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;
    .locals 3

    .prologue
    .line 397
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u0423\u0447\u0435\u043d\u0438\u043a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u043a\u043b\u0430\u0441\u0441\u0430 \u043f\u0440\u0438\u0441\u043b\u0430\u043b \u0444\u043e\u0442\u043e \u0441\u0432\u043e\u0435\u0439 \u0434\u043e\u043c\u0430\u0448\u043d\u0435\u0439 \u0440\u0430\u0431\u043e\u0442\u044b"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 398
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, " (\u043f\u0440\u0435\u0434\u043c\u0435\u0442 \u043e\u043f\u0440\u0435\u0434\u0435\u043b\u0438 \u043f\u043e \u0444\u043e\u0442\u043e)"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 399
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ""

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u0422\u0435\u043a\u0441\u0442 \u0437\u0430\u0434\u0430\u043d\u0438\u044f (\u0438\u0437 \u044d\u043b\u0435\u043a\u0442\u0440\u043e\u043d\u043d\u043e\u0433\u043e \u0434\u043d\u0435\u0432\u043d\u0438\u043a\u0430 \u0438\u043b\u0438 \u0441\u043e \u0441\u043b\u043e\u0432 \u0443\u0447\u0435\u043d\u0438\u043a\u0430): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 400
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "\u043d\u0438\u0447\u0435\u0433\u043e"

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".\n\u0418\u0437\u043e\u0431\u0440\u0430\u0436\u0435\u043d\u0438\u044f: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 401
    const/4 v0, 0x1

    if-ne p4, v0, :cond_3

    const-string v0, "\u043f\u0435\u0440\u0432\u043e\u0435 \u0438\u0437\u043e\u0431\u0440\u0430\u0436\u0435\u043d\u0438\u0435 \u2014 \u0440\u0435\u0448\u0435\u043d\u0438\u0435 \u0443\u0447\u0435\u043d\u0438\u043a\u0430"

    :goto_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 402
    if-lez p5, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", \u043f\u043e\u0441\u043b\u0435\u0434\u043d\u0438\u0435 "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " \u2014 \u0444\u043e\u0442\u043e \u0443\u0441\u043b\u043e\u0432\u0438\u044f \u0438\u0437 \u0443\u0447\u0435\u0431\u043d\u0438\u043a\u0430"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".\n\n\u0412\u0410\u0416\u041d\u041e \u041f\u0420\u041e \u0423\u0421\u041b\u041e\u0412\u0418\u0415. \u041d\u043e\u043c\u0435\u0440\u0430 \u0437\u0430\u0434\u0430\u043d\u0438\u0439 \u0432 \u0440\u0430\u0437\u043d\u044b\u0445 \u0443\u0447\u0435\u0431\u043d\u0438\u043a\u0430\u0445, \u0438\u0437\u0434\u0430\u043d\u0438\u044f\u0445 \u0438 \u0432\u0430\u0440\u0438\u0430\u043d\u0442\u0430\u0445 \u043d\u0435 \u0441\u043e\u0432\u043f\u0430\u0434\u0430\u044e\u0442. \u041d\u0438\u043a\u043e\u0433\u0434\u0430 \u043d\u0435 \u0432\u043e\u0441\u0441\u0442\u0430\u043d\u0430\u0432\u043b\u0438\u0432\u0430\u0439 \u0443\u0441\u043b\u043e\u0432\u0438\u0435 \u043f\u043e \u043d\u043e\u043c\u0435\u0440\u0443 \u0438\u043b\u0438 \u043d\u0430\u0437\u0432\u0430\u043d\u0438\u044e \u0443\u0447\u0435\u0431\u043d\u0438\u043a\u0430 \u0438\u0437 \u043f\u0430\u043c\u044f\u0442\u0438. \u0411\u0435\u0440\u0438 \u0443\u0441\u043b\u043e\u0432\u0438\u0435 \u0442\u043e\u043b\u044c\u043a\u043e \u0438\u0437 \u0442\u0440\u0451\u0445 \u0438\u0441\u0442\u043e\u0447\u043d\u0438\u043a\u043e\u0432: \u0444\u043e\u0442\u043e \u0443\u0441\u043b\u043e\u0432\u0438\u044f (\"photo\"), \u0442\u0435\u043a\u0441\u0442 \u0443\u0441\u043b\u043e\u0432\u0438\u044f, \u043a\u043e\u0442\u043e\u0440\u044b\u0439 \u043d\u0430\u043f\u0438\u0441\u0430\u043b \u0443\u0447\u0435\u043d\u0438\u043a (\"text\"), \u0443\u0441\u043b\u043e\u0432\u0438\u0435, \u043f\u0435\u0440\u0435\u043f\u0438\u0441\u0430\u043d\u043d\u043e\u0435 \u0432 \u0442\u0435\u0442\u0440\u0430\u0434\u0438 \u043d\u0430 \u0444\u043e\u0442\u043e \u0440\u0435\u0448\u0435\u043d\u0438\u044f (\"notebook\"). \u0415\u0441\u043b\u0438 \u0443\u0441\u043b\u043e\u0432\u0438\u044f \u043d\u0435\u0442 \u043d\u0438\u0433\u0434\u0435, \u0438\u0441\u0442\u043e\u0447\u043d\u0438\u043a \"none\": \u0442\u043e\u0433\u0434\u0430 \u043f\u0440\u043e\u0432\u0435\u0440\u044f\u0439 \u0442\u043e\u043b\u044c\u043a\u043e \u0442\u043e, \u0447\u0442\u043e \u043c\u043e\u0436\u043d\u043e \u043f\u0440\u043e\u0432\u0435\u0440\u0438\u0442\u044c \u0431\u0435\u0437 \u0443\u0441\u043b\u043e\u0432\u0438\u044f \u2014 \u0432\u044b\u0447\u0438\u0441\u043b\u0435\u043d\u0438\u044f, \u043f\u0440\u0435\u043e\u0431\u0440\u0430\u0437\u043e\u0432\u0430\u043d\u0438\u044f, \u043b\u043e\u0433\u0438\u043a\u0443, \u043f\u0440\u0430\u0432\u043e\u043f\u0438\u0441\u0430\u043d\u0438\u0435, \u2014 \u043d\u0435 \u043f\u0440\u0438\u0434\u0443\u043c\u044b\u0432\u0430\u0439 \u00ab\u043f\u0440\u0430\u0432\u0438\u043b\u044c\u043d\u044b\u0439 \u043e\u0442\u0432\u0435\u0442 \u0438\u0437 \u0443\u0447\u0435\u0431\u043d\u0438\u043a\u0430\u00bb \u0438 \u0432 \u043f\u043e\u043b\u0435 \"condition_warning\" \u043a\u043e\u0440\u043e\u0442\u043a\u043e \u043d\u0430\u043f\u0438\u0448\u0438, \u0447\u0442\u043e \u0434\u043b\u044f \u043f\u043e\u043b\u043d\u043e\u0439 \u043f\u0440\u043e\u0432\u0435\u0440\u043a\u0438 \u043d\u0443\u0436\u043d\u043e \u0444\u043e\u0442\u043e \u0443\u0441\u043b\u043e\u0432\u0438\u044f. \u0415\u0441\u043b\u0438 \u0443\u0441\u043b\u043e\u0432\u0438\u0435 \u0441 \u0444\u043e\u0442\u043e \u0438\u043b\u0438 \u0438\u0437 \u0442\u0435\u043a\u0441\u0442\u0430 \u043d\u0435 \u0441\u043e\u0432\u043f\u0430\u0434\u0430\u0435\u0442 \u0441 \u0442\u0435\u043c, \u0447\u0442\u043e \u0440\u0435\u0448\u0435\u043d\u043e \u0432 \u0442\u0435\u0442\u0440\u0430\u0434\u0438 (\u0440\u0435\u0448\u0435\u043d\u0430 \u0434\u0440\u0443\u0433\u0430\u044f \u0437\u0430\u0434\u0430\u0447\u0430 \u0438\u043b\u0438 \u0434\u0440\u0443\u0433\u043e\u0439 \u0432\u0430\u0440\u0438\u0430\u043d\u0442), \u044d\u0442\u043e \u043e\u0448\u0438\u0431\u043a\u0430 \u2014 \u0442\u0430\u043a \u0438 \u043d\u0430\u043f\u0438\u0448\u0438.\n\n\u0427\u0442\u043e \u043d\u0443\u0436\u043d\u043e \u0441\u0434\u0435\u043b\u0430\u0442\u044c:\n1. \u0412\u043d\u0438\u043c\u0430\u0442\u0435\u043b\u044c\u043d\u043e \u043f\u0440\u043e\u0447\u0438\u0442\u0430\u0439 \u0440\u0435\u0448\u0435\u043d\u0438\u0435. \u0415\u0441\u043b\u0438 \u0444\u043e\u0442\u043e \u0440\u0430\u0437\u043c\u044b\u0442\u043e, \u043e\u0431\u0440\u0435\u0437\u0430\u043d\u043e \u0438\u043b\u0438 \u043d\u0430 \u043d\u0451\u043c \u043d\u0435\u0442 \u0440\u0435\u0448\u0435\u043d\u0438\u044f, \u0432\u0435\u0440\u043d\u0438 \"readable\": false \u0438 \u0432 \"unreadable_reason\" \u043a\u043e\u0440\u043e\u0442\u043a\u043e \u043e\u0431\u044a\u044f\u0441\u043d\u0438, \u0447\u0442\u043e \u043d\u0435 \u0442\u0430\u043a \u0438 \u043a\u0430\u043a \u043f\u0435\u0440\u0435\u0441\u043d\u044f\u0442\u044c.\n2. \u0414\u043b\u044f \u043a\u0430\u0436\u0434\u043e\u0439 \u0437\u0430\u0434\u0430\u0447\u0438 \u0432\u044b\u043f\u0438\u0448\u0438 \u0443\u0441\u043b\u043e\u0432\u0438\u0435 \u0442\u0430\u043a, \u043a\u0430\u043a \u0442\u044b \u0435\u0433\u043e \u043f\u0440\u043e\u0447\u0438\u0442\u0430\u043b (\u043f\u043e\u043b\u0435 \"condition\"), \u0438 \u0443\u043a\u0430\u0436\u0438 \u0438\u0441\u0442\u043e\u0447\u043d\u0438\u043a (\"condition_source\").\n3. \u041f\u0440\u043e\u0432\u0435\u0440\u044c \u043a\u0430\u0436\u0434\u0443\u044e \u0437\u0430\u0434\u0430\u0447\u0443 \u0438 \u043a\u0430\u0436\u0434\u044b\u0439 \u0448\u0430\u0433: \u0432\u044b\u0447\u0438\u0441\u043b\u0435\u043d\u0438\u044f, \u043b\u043e\u0433\u0438\u043a\u0443, \u0435\u0434\u0438\u043d\u0438\u0446\u044b \u0438\u0437\u043c\u0435\u0440\u0435\u043d\u0438\u044f, \u043e\u0442\u0432\u0435\u0442. \u0414\u043b\u044f \u044f\u0437\u044b\u043a\u043e\u0432 \u2014 \u043e\u0440\u0444\u043e\u0433\u0440\u0430\u0444\u0438\u044e, \u043f\u0443\u043d\u043a\u0442\u0443\u0430\u0446\u0438\u044e, \u0433\u0440\u0430\u043c\u043c\u0430\u0442\u0438\u043a\u0443, \u0441\u043e\u043e\u0442\u0432\u0435\u0442\u0441\u0442\u0432\u0438\u0435 \u0437\u0430\u0434\u0430\u043d\u0438\u044e. \u041f\u0435\u0440\u0435\u0441\u0447\u0438\u0442\u0430\u0439 \u0432\u044b\u0447\u0438\u0441\u043b\u0435\u043d\u0438\u044f \u0441\u0430\u043c, \u043d\u0435 \u0434\u043e\u0432\u0435\u0440\u044f\u0439 \u043e\u0442\u0432\u0435\u0442\u0443 \u0443\u0447\u0435\u043d\u0438\u043a\u0430.\n4. \u041d\u0435 \u043f\u0440\u0438\u0434\u0438\u0440\u0430\u0439\u0441\u044f \u043a \u043f\u043e\u0447\u0435\u0440\u043a\u0443 \u0438 \u043e\u0444\u043e\u0440\u043c\u043b\u0435\u043d\u0438\u044e, \u0435\u0441\u043b\u0438 \u0438\u0437-\u0437\u0430 \u043d\u0438\u0445 \u0440\u0435\u0448\u0435\u043d\u0438\u0435 \u043d\u0435 \u0441\u0442\u0430\u043d\u043e\u0432\u0438\u0442\u0441\u044f \u043d\u0435\u0432\u0435\u0440\u043d\u044b\u043c.\n5. \u0414\u043b\u044f \u043a\u0430\u0436\u0434\u043e\u0439 \u043e\u0448\u0438\u0431\u043a\u0438 \u0443\u043a\u0430\u0436\u0438: \u0433\u0434\u0435 \u043e\u043d\u0430, \u0447\u0442\u043e \u0438\u043c\u0435\u043d\u043d\u043e \u043d\u0435 \u0442\u0430\u043a, \u043a\u0430\u043a\u043e\u0435 \u043f\u0440\u0430\u0432\u0438\u043b\u043e \u043d\u0430\u0440\u0443\u0448\u0435\u043d\u043e, \u043d\u0430\u0432\u043e\u0434\u044f\u0449\u0443\u044e \u043f\u043e\u0434\u0441\u043a\u0430\u0437\u043a\u0443 (\u043d\u0435 \u0440\u0430\u0441\u043a\u0440\u044b\u0432\u0430\u044f \u043e\u0442\u0432\u0435\u0442) \u0438 \u043f\u043e\u0448\u0430\u0433\u043e\u0432\u043e\u0435 \u0438\u0441\u043f\u0440\u0430\u0432\u043b\u0435\u043d\u0438\u0435.\n6. \u041e\u0431\u044a\u044f\u0441\u043d\u044f\u0439 \u043f\u0440\u043e\u0441\u0442\u044b\u043c\u0438 \u0441\u043b\u043e\u0432\u0430\u043c\u0438 \u043d\u0430 \u0443\u0440\u043e\u0432\u043d\u0435 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u043a\u043b\u0430\u0441\u0441\u0430. \u0424\u043e\u0440\u043c\u0443\u043b\u044b \u043f\u0438\u0448\u0438 \u043e\u0431\u044b\u0447\u043d\u044b\u043c \u0442\u0435\u043a\u0441\u0442\u043e\u043c \u0441 \u0441\u0438\u043c\u0432\u043e\u043b\u0430\u043c\u0438 Unicode (x\u00b2, \u221a, \u00b7, \u00f7, \u2264, \u2260, \u03c0), \u0431\u0435\u0437 LaTeX \u0438 \u0431\u0435\u0437 Markdown.\n7. \u041f\u043e\u0441\u0442\u0430\u0432\u044c \u043e\u0446\u0435\u043d\u043a\u0443 \u043f\u043e \u043f\u044f\u0442\u0438\u0431\u0430\u043b\u043b\u044c\u043d\u043e\u0439 \u0448\u043a\u043e\u043b\u044c\u043d\u043e\u0439 \u0448\u043a\u0430\u043b\u0435 (2\u20135) \u0438 \u043f\u0440\u043e\u0446\u0435\u043d\u0442 \u043f\u0440\u0430\u0432\u0438\u043b\u044c\u043d\u043e \u0440\u0435\u0448\u0451\u043d\u043d\u043e\u0433\u043e.\n\n\u041e\u0442\u0432\u0435\u0442\u044c \u0442\u043e\u043b\u044c\u043a\u043e JSON, \u0431\u0435\u0437 \u043f\u043e\u044f\u0441\u043d\u0435\u043d\u0438\u0439 \u0434\u043e \u0438 \u043f\u043e\u0441\u043b\u0435, \u0442\u0430\u043a\u043e\u0433\u043e \u0432\u0438\u0434\u0430:\n{\"readable\": true, \"unreadable_reason\": \"\", \"subject\": \"\u043f\u0440\u0435\u0434\u043c\u0435\u0442, \u043d\u0430\u043f\u0440\u0438\u043c\u0435\u0440 \u0410\u043b\u0433\u0435\u0431\u0440\u0430\", \"condition_warning\": \"\", \"grade\": 4, \"score\": 80, \"summary\": \"1\u20132 \u043f\u0440\u0435\u0434\u043b\u043e\u0436\u0435\u043d\u0438\u044f \u043e\u0431 \u0438\u0442\u043e\u0433\u0435\", \"praise\": \"\u0447\u0442\u043e \u043f\u043e\u043b\u0443\u0447\u0438\u043b\u043e\u0441\u044c \u0445\u043e\u0440\u043e\u0448\u043e, \u043e\u0434\u043d\u043e \u043f\u0440\u0435\u0434\u043b\u043e\u0436\u0435\u043d\u0438\u0435\", \"tasks\": [{\"title\": \"\u2116 245\", \"condition\": \"\u0443\u0441\u043b\u043e\u0432\u0438\u0435, \u043a\u0430\u043a \u0442\u044b \u0435\u0433\u043e \u043f\u0440\u043e\u0447\u0438\u0442\u0430\u043b\", \"condition_source\": \"photo\", \"status\": \"ok\", \"student_answer\": \"...\", \"correct_answer\": \"...\", \"issues\": []}, {\"title\": \"\u2116 246\", \"condition\": \"...\", \"condition_source\": \"notebook\", \"status\": \"error\", \"student_answer\": \"...\", \"correct_answer\": \"...\", \"issues\": [{\"where\": \"2-\u044f \u0441\u0442\u0440\u043e\u043a\u0430\", \"what\": \"...\", \"why\": \"...\", \"hint\": \"...\", \"fix\": \"...\"}]}], \"next_steps\": [\"\u0447\u0442\u043e \u043f\u043e\u0432\u0442\u043e\u0440\u0438\u0442\u044c \u0438\u043b\u0438 \u043d\u0430 \u0447\u0442\u043e \u043e\u0431\u0440\u0430\u0442\u0438\u0442\u044c \u0432\u043d\u0438\u043c\u0430\u043d\u0438\u0435\"]}\nstatus: \"ok\" \u2014 \u0432\u0441\u0451 \u0432\u0435\u0440\u043d\u043e; \"partial\" \u2014 \u0445\u043e\u0434 \u0432\u0435\u0440\u043d\u044b\u0439, \u043d\u043e \u0435\u0441\u0442\u044c \u043d\u0435\u0434\u043e\u0447\u0451\u0442; \"error\" \u2014 \u043e\u0448\u0438\u0431\u043a\u0430. \u0423 \u0432\u0435\u0440\u043d\u044b\u0445 \u0437\u0430\u0434\u0430\u0447 \"issues\" \u2014 \u043f\u0443\u0441\u0442\u043e\u0439 \u043c\u0430\u0441\u0441\u0438\u0432. \u0415\u0441\u043b\u0438 \u0443\u0441\u043b\u043e\u0432\u0438\u044f \u043d\u0435\u0442 \u0438 \u043f\u0440\u0430\u0432\u0438\u043b\u044c\u043d\u044b\u0439 \u043e\u0442\u0432\u0435\u0442 \u0431\u0435\u0437 \u043d\u0435\u0433\u043e \u043d\u0435 \u0443\u0437\u043d\u0430\u0442\u044c, \u043e\u0441\u0442\u0430\u0432\u044c \"correct_answer\" \u043f\u0443\u0441\u0442\u044b\u043c."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 397
    return-object v0

    .line 398
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " \u043f\u043e \u043f\u0440\u0435\u0434\u043c\u0435\u0442\u0443 \u00ab"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\u00bb"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 399
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u0423\u0447\u0435\u0431\u043d\u0438\u043a: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 400
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u00ab"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\u00bb"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 401
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u043f\u0435\u0440\u0432\u044b\u0435 "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " \u0438\u0437\u043e\u0431\u0440\u0430\u0436\u0435\u043d\u0438\u044f \u2014 \u0440\u0435\u0448\u0435\u043d\u0438\u0435 \u0443\u0447\u0435\u043d\u0438\u043a\u0430 (\u0441\u0442\u0440\u0430\u043d\u0438\u0446\u044b \u043f\u043e \u043f\u043e\u0440\u044f\u0434\u043a\u0443)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    .line 402
    :cond_4
    const-string v0, ""

    goto/16 :goto_4
.end method

.method private static choiceText(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 347
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 348
    const-string v1, "choices"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 349
    const-string v0, ""

    .line 350
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 351
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "message"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 352
    if-eqz v1, :cond_0

    const-string v0, "content"

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 354
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Lru/fokus/tetrad/AiClient$AiException;

    const-string v1, "\u041f\u0440\u0438\u0448\u0451\u043b \u043f\u0443\u0441\u0442\u043e\u0439 \u043e\u0442\u0432\u0435\u0442. \u041f\u043e\u043f\u0440\u043e\u0431\u0443\u0439 \u0435\u0449\u0451 \u0440\u0430\u0437 \u0441 \u0431\u043e\u043b\u0435\u0435 \u0447\u0451\u0442\u043a\u0438\u043c \u0444\u043e\u0442\u043e."

    invoke-direct {v0, v1}, Lru/fokus/tetrad/AiClient$AiException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 355
    :cond_1
    return-object v0
.end method

.method static collage(Landroid/content/Context;Ljava/util/List;)Ljava/io/File;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;)",
            "Ljava/io/File;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    const/4 v2, 0x0

    .line 481
    const/16 v3, 0x4b0

    .line 482
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 484
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 485
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 486
    if-eqz v0, :cond_0

    .line 487
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 488
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    int-to-float v7, v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float v0, v7, v0

    mul-float/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    add-int/lit8 v0, v0, 0x10

    add-int/2addr v0, v1

    move v1, v0

    .line 489
    goto :goto_0

    .line 490
    :cond_1
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "no images"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 491
    :cond_2
    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v5, 0x457a0000    # 4000.0f

    int-to-float v6, v1

    div-float/2addr v5, v6

    invoke-static {v0, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 492
    int-to-float v0, v3

    mul-float/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v0, v1

    mul-float/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 493
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 494
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 495
    const/4 v0, -0x1

    invoke-virtual {v7, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 497
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 498
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    int-to-float v9, v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    mul-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 499
    new-instance v9, Landroid/graphics/Rect;

    add-int v10, v1, v8

    invoke-direct {v9, v2, v1, v3, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v7, v0, v11, v9, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 500
    const/high16 v9, 0x41800000    # 16.0f

    mul-float/2addr v9, v5

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v1, v8

    .line 501
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1

    .line 503
    :cond_3
    const-string v0, "c_"

    invoke-static {p0, v6, v0}, Lru/fokus/tetrad/AiClient;->saveJpeg(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static complete(Landroid/content/Context;Lru/fokus/tetrad/Store;Ljava/lang/String;Ljava/util/List;Ljava/util/List;I)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lru/fokus/tetrad/Store;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lru/fokus/tetrad/AiClient$AiException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 68
    const-string v0, "openai"

    invoke-virtual {p1}, Lru/fokus/tetrad/Store;->provider()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lru/fokus/tetrad/Store;->oaBase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lru/fokus/tetrad/Store;->oaKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lru/fokus/tetrad/Store;->oaModel()Ljava/lang/String;

    move-result-object v2

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-static/range {v0 .. v7}, Lru/fokus/tetrad/AiClient;->openAi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;IZ)Ljava/lang/String;

    move-result-object v0

    .line 79
    :goto_0
    return-object v0

    .line 69
    :cond_0
    const-string v0, "zai"

    invoke-virtual {p1}, Lru/fokus/tetrad/Store;->provider()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 71
    :try_start_0
    const-string v0, "https://api.z.ai/api/paas/v4"

    invoke-virtual {p1}, Lru/fokus/tetrad/Store;->zaiKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lru/fokus/tetrad/Store;->zaiModel()Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-static/range {v0 .. v7}, Lru/fokus/tetrad/AiClient;->openAi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;IZ)Ljava/lang/String;
    :try_end_0
    .catch Lru/fokus/tetrad/AiClient$AiException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 72
    :catch_0
    move-exception v0

    .line 74
    if-eqz p4, :cond_2

    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, v0, Lru/fokus/tetrad/AiClient$AiException;->code:I

    const/16 v2, 0x190

    if-eq v1, v2, :cond_1

    iget v1, v0, Lru/fokus/tetrad/AiClient$AiException;->code:I

    const/16 v2, 0x1a6

    if-ne v1, v2, :cond_2

    .line 75
    :cond_1
    const-string v0, "https://api.z.ai/api/paas/v4"

    invoke-virtual {p1}, Lru/fokus/tetrad/Store;->zaiKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lru/fokus/tetrad/Store;->zaiModel()Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-static/range {v0 .. v7}, Lru/fokus/tetrad/AiClient;->openAi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;IZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 76
    :cond_2
    throw v0

    .line 79
    :cond_3
    invoke-static/range {p0 .. p5}, Lru/fokus/tetrad/AiClient;->giga(Landroid/content/Context;Lru/fokus/tetrad/Store;Ljava/lang/String;Ljava/util/List;Ljava/util/List;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static deleteAll(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 518
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    .line 519
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 520
    return-void
.end method

.method private static errorMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0xc8

    .line 360
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 361
    const-string v0, "error"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 362
    instance-of v2, v0, Lorg/json/JSONObject;

    if-eqz v2, :cond_1

    check-cast v0, Lorg/json/JSONObject;

    const-string v1, "message"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 366
    :cond_0
    :goto_0
    return-object p0

    .line 363
    :cond_1
    const-string v2, "message"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v0, "message"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 364
    :cond_2
    if-eqz v0, :cond_3

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto :goto_0

    .line 365
    :catch_0
    move-exception v0

    .line 366
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private static giga(Landroid/content/Context;Lru/fokus/tetrad/Store;Ljava/lang/String;Ljava/util/List;Ljava/util/List;I)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lru/fokus/tetrad/Store;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lru/fokus/tetrad/AiClient$AiException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 129
    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    :try_start_0
    invoke-static/range {v0 .. v5}, Lru/fokus/tetrad/AiClient;->gigaOnce(Lru/fokus/tetrad/Store;Ljava/lang/String;Ljava/util/List;Ljava/util/List;IZ)Ljava/lang/String;
    :try_end_0
    .catch Lru/fokus/tetrad/AiClient$AiException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 139
    :cond_0
    :goto_0
    return-object v0

    .line 130
    :catch_0
    move-exception v7

    .line 131
    iget v0, v7, Lru/fokus/tetrad/AiClient$AiException;->code:I

    const/16 v1, 0x191

    if-ne v0, v1, :cond_1

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move v5, v6

    invoke-static/range {v0 .. v5}, Lru/fokus/tetrad/AiClient;->gigaOnce(Lru/fokus/tetrad/Store;Ljava/lang/String;Ljava/util/List;Ljava/util/List;IZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 133
    :cond_1
    if-eqz p4, :cond_4

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v6, :cond_4

    iget v0, v7, Lru/fokus/tetrad/AiClient$AiException;->code:I

    const/16 v1, 0x190

    if-eq v0, v1, :cond_2

    iget v0, v7, Lru/fokus/tetrad/AiClient$AiException;->code:I

    const/16 v1, 0x1a6

    if-ne v0, v1, :cond_4

    .line 134
    :cond_2
    const/4 v1, 0x0

    .line 136
    :try_start_1
    invoke-static {p0, p4}, Lru/fokus/tetrad/AiClient;->collage(Landroid/content/Context;Ljava/util/List;)Ljava/io/File;
    :try_end_1
    .catch Lru/fokus/tetrad/AiClient$AiException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v6

    .line 137
    :try_start_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 138
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move v4, p5

    invoke-static/range {v0 .. v5}, Lru/fokus/tetrad/AiClient;->gigaOnce(Lru/fokus/tetrad/Store;Ljava/lang/String;Ljava/util/List;Ljava/util/List;IZ)Ljava/lang/String;
    :try_end_2
    .catch Lru/fokus/tetrad/AiClient$AiException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v0

    .line 145
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 140
    :catch_1
    move-exception v0

    .line 141
    :goto_1
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 145
    :catchall_0
    move-exception v0

    move-object v6, v1

    :goto_2
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 146
    :cond_3
    throw v0

    .line 142
    :catch_2
    move-exception v0

    move-object v6, v1

    .line 143
    :goto_3
    :try_start_4
    throw v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 145
    :catchall_1
    move-exception v0

    goto :goto_2

    .line 148
    :cond_4
    throw v7

    .line 145
    :catchall_2
    move-exception v0

    move-object v6, v1

    goto :goto_2

    .line 142
    :catch_3
    move-exception v0

    goto :goto_3

    .line 140
    :catch_4
    move-exception v0

    move-object v1, v6

    goto :goto_1
.end method

.method private static declared-synchronized gigaAccessToken(Lru/fokus/tetrad/Store;Z)Ljava/lang/String;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lru/fokus/tetrad/AiClient$AiException;
        }
    .end annotation

    .prologue
    const-wide/16 v10, 0x0

    const/16 v8, 0x190

    .line 91
    const-class v4, Lru/fokus/tetrad/AiClient;

    monitor-enter v4

    :try_start_0
    invoke-virtual {p0}, Lru/fokus/tetrad/Store;->gigaKey()Ljava/lang/String;

    move-result-object v5

    .line 92
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lru/fokus/tetrad/AiClient$AiException;

    const-string v1, "\u0414\u043e\u0431\u0430\u0432\u044c \u043a\u043b\u044e\u0447 \u0430\u0432\u0442\u043e\u0440\u0438\u0437\u0430\u0446\u0438\u0438 GigaChat \u0432\u043e \u0432\u043a\u043b\u0430\u0434\u043a\u0435 \u00ab\u041d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0438\u00bb, \u0447\u0442\u043e\u0431\u044b \u0432\u043a\u043b\u044e\u0447\u0438\u0442\u044c \u043f\u0440\u043e\u0432\u0435\u0440\u043a\u0443."

    invoke-direct {v0, v1}, Lru/fokus/tetrad/AiClient$AiException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0

    .line 93
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 94
    if-nez p1, :cond_2

    sget-object v0, Lru/fokus/tetrad/AiClient;->gigaToken:Ljava/lang/String;

    if-eqz v0, :cond_2

    sget-object v0, Lru/fokus/tetrad/AiClient;->gigaTokenKey:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-wide v0, Lru/fokus/tetrad/AiClient;->gigaTokenExp:J

    const-wide/32 v2, 0xea60

    sub-long/2addr v0, v2

    cmp-long v0, v6, v0

    if-gez v0, :cond_2

    sget-object v0, Lru/fokus/tetrad/AiClient;->gigaToken:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 117
    :cond_1
    :goto_0
    monitor-exit v4

    return-object v0

    .line 95
    :cond_2
    const/4 v1, 0x0

    .line 97
    :try_start_2
    const-string v0, "https://ngw.devices.sberbank.ru:9443/api/v2/oauth"

    const-string v2, "POST"

    invoke-static {v0, v2}, Lru/fokus/tetrad/AiClient;->open(Ljava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v1

    .line 98
    const-string v0, "Content-Type"

    const-string v2, "application/x-www-form-urlencoded"

    invoke-virtual {v1, v0, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string v0, "Accept"

    const-string v2, "application/json"

    invoke-virtual {v1, v0, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string v0, "RqUID"

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string v0, "Authorization"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Basic "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scope="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lru/fokus/tetrad/Store;->gigaScope()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "UTF-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v1, v0}, Lru/fokus/tetrad/AiClient;->writeBody(Ljava/net/HttpURLConnection;[B)V

    .line 103
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    .line 104
    invoke-static {v1, v0}, Lru/fokus/tetrad/AiClient;->readBody(Ljava/net/HttpURLConnection;I)Ljava/lang/String;

    move-result-object v2

    .line 105
    if-eq v0, v8, :cond_3

    const/16 v3, 0x191

    if-eq v0, v3, :cond_3

    const/16 v3, 0x193

    if-ne v0, v3, :cond_5

    .line 106
    :cond_3
    new-instance v2, Lru/fokus/tetrad/AiClient$AiException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GigaChat \u043d\u0435 \u043f\u0440\u0438\u043d\u044f\u043b \u043a\u043b\u044e\u0447 \u0430\u0432\u0442\u043e\u0440\u0438\u0437\u0430\u0446\u0438\u0438 ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "). \u0421\u043a\u043e\u043f\u0438\u0440\u0443\u0439 \u0435\u0433\u043e \u0437\u0430\u043d\u043e\u0432\u043e \u0438\u0437 \u043b\u0438\u0447\u043d\u043e\u0433\u043e \u043a\u0430\u0431\u0438\u043d\u0435\u0442\u0430 developers.sber.ru \u2192 \u043f\u0440\u043e\u0435\u043a\u0442 GigaChat API \u2192 \u00ab\u041a\u043b\u044e\u0447 \u0430\u0432\u0442\u043e\u0440\u0438\u0437\u0430\u0446\u0438\u0438\u00bb."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lru/fokus/tetrad/AiClient$AiException;-><init>(Ljava/lang/String;I)V

    throw v2
    :try_end_2
    .catch Lru/fokus/tetrad/AiClient$AiException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 118
    :catch_0
    move-exception v0

    .line 119
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 123
    :catchall_1
    move-exception v0

    if-eqz v1, :cond_4

    :try_start_4
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 124
    :cond_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 107
    :cond_5
    if-lt v0, v8, :cond_6

    :try_start_5
    new-instance v3, Lru/fokus/tetrad/AiClient$AiException;

    invoke-static {v0, v2}, Lru/fokus/tetrad/AiClient;->gigaError(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2, v0}, Lru/fokus/tetrad/AiClient$AiException;-><init>(Ljava/lang/String;I)V

    throw v3
    :try_end_5
    .catch Lru/fokus/tetrad/AiClient$AiException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 120
    :catch_1
    move-exception v0

    .line 121
    :try_start_6
    invoke-static {v0}, Lru/fokus/tetrad/AiClient;->netError(Ljava/lang/Exception;)Lru/fokus/tetrad/AiClient$AiException;

    move-result-object v0

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 108
    :cond_6
    :try_start_7
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 109
    const-string v0, "access_token"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "access_token"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 110
    :goto_1
    const-string v2, "expires_at"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "expires_at"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 111
    :goto_2
    cmp-long v8, v2, v10

    if-lez v8, :cond_7

    const-wide v8, 0x174876e800L

    cmp-long v8, v2, v8

    if-gez v8, :cond_7

    const-wide/16 v8, 0x3e8

    mul-long/2addr v2, v8

    .line 112
    :cond_7
    cmp-long v8, v2, v10

    if-gtz v8, :cond_8

    const-wide/32 v2, 0x16e360

    add-long/2addr v2, v6

    .line 113
    :cond_8
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_b

    new-instance v0, Lru/fokus/tetrad/AiClient$AiException;

    const-string v2, "GigaChat \u043d\u0435 \u0432\u044b\u0434\u0430\u043b \u0442\u043e\u043a\u0435\u043d \u0434\u043e\u0441\u0442\u0443\u043f\u0430. \u041f\u043e\u043f\u0440\u043e\u0431\u0443\u0439 \u0435\u0449\u0451 \u0440\u0430\u0437."

    invoke-direct {v0, v2}, Lru/fokus/tetrad/AiClient$AiException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_9
    const-string v0, "tok"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 110
    :cond_a
    const-string v2, "exp"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    goto :goto_2

    .line 114
    :cond_b
    sput-object v0, Lru/fokus/tetrad/AiClient;->gigaToken:Ljava/lang/String;

    .line 115
    sput-wide v2, Lru/fokus/tetrad/AiClient;->gigaTokenExp:J

    .line 116
    sput-object v5, Lru/fokus/tetrad/AiClient;->gigaTokenKey:Ljava/lang/String;
    :try_end_7
    .catch Lru/fokus/tetrad/AiClient$AiException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 123
    if-eqz v1, :cond_1

    :try_start_8
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0
.end method

.method private static gigaDelete(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 235
    const/4 v0, 0x0

    .line 237
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://api.giga.chat/v1/files/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/delete"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "POST"

    invoke-static {v1, v2}, Lru/fokus/tetrad/AiClient;->open(Ljava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 238
    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 239
    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 240
    const-string v1, "Authorization"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bearer "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    const-string v1, "Accept"

    const-string v2, "application/json"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    const/4 v1, 0x0

    new-array v1, v1, [B

    invoke-static {v0, v1}, Lru/fokus/tetrad/AiClient;->writeBody(Ljava/net/HttpURLConnection;[B)V

    .line 243
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 248
    :cond_0
    :goto_0
    return-void

    .line 244
    :catch_0
    move-exception v1

    .line 246
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_0

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 247
    :cond_1
    throw v1
.end method

.method private static gigaError(ILjava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 251
    invoke-static {p1}, Lru/fokus/tetrad/AiClient;->errorMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 252
    sparse-switch p0, :sswitch_data_0

    .line 260
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u041e\u0448\u0438\u0431\u043a\u0430 GigaChat "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    .line 253
    :sswitch_0
    const-string v0, "\u0422\u043e\u043a\u0435\u043d GigaChat \u043d\u0435 \u043f\u0440\u0438\u043d\u044f\u0442. \u041f\u043e\u043f\u0440\u043e\u0431\u0443\u0439 \u0435\u0449\u0451 \u0440\u0430\u0437."

    goto :goto_1

    .line 254
    :sswitch_1
    const-string v0, "\u0417\u0430\u043a\u043e\u043d\u0447\u0438\u043b\u0441\u044f \u0431\u0435\u0441\u043f\u043b\u0430\u0442\u043d\u044b\u0439 \u043f\u0430\u043a\u0435\u0442 \u0442\u043e\u043a\u0435\u043d\u043e\u0432 \u044d\u0442\u043e\u0439 \u043c\u043e\u0434\u0435\u043b\u0438. \u0412\u044b\u0431\u0435\u0440\u0438 \u0434\u0440\u0443\u0433\u0443\u044e \u043c\u043e\u0434\u0435\u043b\u044c GigaChat \u0432 \u00ab\u041d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0430\u0445\u00bb."

    goto :goto_1

    .line 255
    :sswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u041c\u043e\u0434\u0435\u043b\u044c \u043d\u0435 \u043d\u0430\u0439\u0434\u0435\u043d\u0430 (404). \u0412\u044b\u0431\u0435\u0440\u0438 \u0434\u0440\u0443\u0433\u0443\u044e \u043c\u043e\u0434\u0435\u043b\u044c \u0432 \u00ab\u041d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0430\u0445\u00bb. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 256
    :sswitch_3
    const-string v0, "\u0424\u043e\u0442\u043e \u0441\u043b\u0438\u0448\u043a\u043e\u043c \u0431\u043e\u043b\u044c\u0448\u0438\u0435. \u0423\u0431\u0435\u0440\u0438 \u0447\u0430\u0441\u0442\u044c \u0441\u043d\u0438\u043c\u043a\u043e\u0432."

    goto :goto_1

    .line 257
    :sswitch_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GigaChat \u043d\u0435 \u043f\u0440\u0438\u043d\u044f\u043b \u0437\u0430\u043f\u0440\u043e\u0441 (422). "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 258
    :sswitch_5
    const-string v0, "GigaChat \u0437\u0430\u043d\u044f\u0442: \u0431\u0435\u0441\u043f\u043b\u0430\u0442\u043d\u044b\u0439 \u0434\u043e\u0441\u0442\u0443\u043f \u043e\u0431\u0440\u0430\u0431\u0430\u0442\u044b\u0432\u0430\u0435\u0442 \u043e\u0434\u0438\u043d \u0437\u0430\u043f\u0440\u043e\u0441 \u0437\u0430 \u0440\u0430\u0437. \u041f\u043e\u0434\u043e\u0436\u0434\u0438 \u043c\u0438\u043d\u0443\u0442\u0443 \u0438 \u043f\u043e\u043f\u0440\u043e\u0431\u0443\u0439 \u0441\u043d\u043e\u0432\u0430."

    goto :goto_1

    .line 259
    :sswitch_6
    const-string v0, "\u0421\u0435\u0440\u0432\u0438\u0441 GigaChat \u0432\u0440\u0435\u043c\u0435\u043d\u043d\u043e \u043d\u0435\u0434\u043e\u0441\u0442\u0443\u043f\u0435\u043d. \u041f\u043e\u043f\u0440\u043e\u0431\u0443\u0439 \u0447\u0435\u0440\u0435\u0437 \u043c\u0438\u043d\u0443\u0442\u0443."

    goto :goto_1

    .line 260
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 252
    :sswitch_data_0
    .sparse-switch
        0x191 -> :sswitch_0
        0x192 -> :sswitch_1
        0x194 -> :sswitch_2
        0x19d -> :sswitch_3
        0x1a6 -> :sswitch_4
        0x1ad -> :sswitch_5
        0x1f4 -> :sswitch_6
        0x1f6 -> :sswitch_6
        0x1f7 -> :sswitch_6
        0x1f8 -> :sswitch_6
    .end sparse-switch
.end method

.method private static gigaOnce(Lru/fokus/tetrad/Store;Ljava/lang/String;Ljava/util/List;Ljava/util/List;IZ)Ljava/lang/String;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lru/fokus/tetrad/Store;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;IZ)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lru/fokus/tetrad/AiClient$AiException;
        }
    .end annotation

    .prologue
    .line 153
    move/from16 v0, p5

    invoke-static {p0, v0}, Lru/fokus/tetrad/AiClient;->gigaAccessToken(Lru/fokus/tetrad/Store;Z)Ljava/lang/String;

    move-result-object v5

    .line 154
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 156
    if-eqz p3, :cond_0

    :try_start_0
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    invoke-static {v5, v2}, Lru/fokus/tetrad/AiClient;->gigaUpload(Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lru/fokus/tetrad/AiClient$AiException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 198
    :catch_0
    move-exception v2

    .line 199
    :try_start_1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 203
    :catchall_0
    move-exception v2

    move-object v3, v2

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v5, v2}, Lru/fokus/tetrad/AiClient;->gigaDelete(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 158
    :cond_0
    :try_start_2
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    .line 159
    if-eqz p1, :cond_1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "role"

    const-string v4, "system"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "content"

    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v7, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 160
    :cond_1
    const/4 v2, 0x0

    move v4, v2

    :goto_2
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v4, v2, :cond_6

    .line 161
    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 162
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v4, v3, :cond_2

    const/4 v3, 0x1

    .line 163
    :goto_3
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    const-string v9, "role"

    const/4 v10, 0x0

    aget-object v10, v2, v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "content"

    const/4 v10, 0x1

    aget-object v10, v2, v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v8

    .line 164
    if-eqz v3, :cond_5

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    .line 167
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    .line 168
    const/4 v3, 0x0

    :goto_4
    add-int/lit8 v10, v9, -0x1

    if-ge v3, v10, :cond_3

    .line 169
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    const-string v11, "role"

    const-string v12, "user"

    invoke-virtual {v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "content"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "\u0418\u0437\u043e\u0431\u0440\u0430\u0436\u0435\u043d\u0438\u0435 "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    add-int/lit8 v13, v3, 0x1

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " \u0438\u0437 "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 170
    invoke-virtual {v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "attachments"

    new-instance v12, Lorg/json/JSONArray;

    invoke-direct {v12}, Lorg/json/JSONArray;-><init>()V

    .line 171
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v10

    .line 169
    invoke-virtual {v7, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 168
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 162
    :cond_2
    const/4 v3, 0x0

    goto :goto_3

    .line 173
    :cond_3
    const/4 v3, 0x1

    if-le v9, v3, :cond_4

    const-string v3, "content"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\u0418\u0437\u043e\u0431\u0440\u0430\u0436\u0435\u043d\u0438\u0435 "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " \u0438\u0437 "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".\n\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x1

    aget-object v2, v2, v11

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 174
    :cond_4
    const-string v2, "attachments"

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    add-int/lit8 v9, v9, -0x1

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v3, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v8, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 176
    :cond_5
    invoke-virtual {v7, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 160
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto/16 :goto_2

    .line 178
    :cond_6
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "model"

    .line 179
    invoke-virtual {p0}, Lru/fokus/tetrad/Store;->gigaModel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "messages"

    .line 180
    invoke-virtual {v2, v3, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "max_tokens"

    .line 181
    move/from16 v0, p4

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "temperature"

    const-wide v8, 0x3fc999999999999aL    # 0.2

    .line 182
    invoke-virtual {v2, v3, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "stream"

    const/4 v4, 0x0

    .line 183
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_2
    .catch Lru/fokus/tetrad/AiClient$AiException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    .line 184
    const/4 v3, 0x0

    .line 186
    :try_start_3
    const-string v4, "https://api.giga.chat/v1/chat/completions"

    const-string v7, "POST"

    invoke-static {v4, v7}, Lru/fokus/tetrad/AiClient;->open(Ljava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v3

    .line 187
    const-string v4, "Content-Type"

    const-string v7, "application/json"

    invoke-virtual {v3, v4, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    const-string v4, "Accept"

    const-string v7, "application/json"

    invoke-virtual {v3, v4, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    const-string v4, "Authorization"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Bearer "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v4, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "UTF-8"

    invoke-virtual {v2, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v3, v2}, Lru/fokus/tetrad/AiClient;->writeBody(Ljava/net/HttpURLConnection;[B)V

    .line 191
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 192
    invoke-static {v3, v2}, Lru/fokus/tetrad/AiClient;->readBody(Ljava/net/HttpURLConnection;I)Ljava/lang/String;

    move-result-object v4

    .line 193
    const/16 v7, 0x190

    if-lt v2, v7, :cond_8

    new-instance v7, Lru/fokus/tetrad/AiClient$AiException;

    invoke-static {v2, v4}, Lru/fokus/tetrad/AiClient;->gigaError(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v7, v4, v2}, Lru/fokus/tetrad/AiClient$AiException;-><init>(Ljava/lang/String;I)V

    throw v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 196
    :catchall_1
    move-exception v2

    if-eqz v3, :cond_7

    :try_start_4
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 197
    :cond_7
    throw v2
    :try_end_4
    .catch Lru/fokus/tetrad/AiClient$AiException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 200
    :catch_1
    move-exception v2

    .line 201
    :try_start_5
    invoke-static {v2}, Lru/fokus/tetrad/AiClient;->netError(Ljava/lang/Exception;)Lru/fokus/tetrad/AiClient$AiException;

    move-result-object v2

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 194
    :cond_8
    :try_start_6
    invoke-static {v4}, Lru/fokus/tetrad/AiClient;->choiceText(Ljava/lang/String;)Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result-object v4

    .line 196
    if-eqz v3, :cond_9

    :try_start_7
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_7
    .catch Lru/fokus/tetrad/AiClient$AiException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 203
    :cond_9
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v5, v2}, Lru/fokus/tetrad/AiClient;->gigaDelete(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 204
    :cond_a
    throw v3

    .line 194
    :cond_b
    return-object v4
.end method

.method private static gigaUpload(Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "----fokus"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "-"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 209
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 210
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\r\nContent-Disposition: form-data; name=\"purpose\"\r\n\r\ngeneral\r\n--"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\r\nContent-Disposition: form-data; name=\"file\"; filename=\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 211
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\"\r\nContent-Type: image/jpeg\r\n\r\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 213
    const-string v3, "UTF-8"

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 214
    invoke-static {p1}, Lru/fokus/tetrad/AiClient;->readFile(Ljava/io/File;)[B

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 215
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\r\n--"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "--\r\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "UTF-8"

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 216
    const/4 v1, 0x0

    .line 218
    :try_start_0
    const-string v3, "https://api.giga.chat/v1/files"

    const-string v4, "POST"

    invoke-static {v3, v4}, Lru/fokus/tetrad/AiClient;->open(Ljava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v1

    .line 219
    const-string v3, "Content-Type"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "multipart/form-data; boundary="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    const-string v0, "Accept"

    const-string v3, "application/json"

    invoke-virtual {v1, v0, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    const-string v0, "Authorization"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bearer "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v1, v0}, Lru/fokus/tetrad/AiClient;->writeBody(Ljava/net/HttpURLConnection;[B)V

    .line 223
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    .line 224
    invoke-static {v1, v0}, Lru/fokus/tetrad/AiClient;->readBody(Ljava/net/HttpURLConnection;I)Ljava/lang/String;

    move-result-object v2

    .line 225
    const/16 v3, 0x190

    if-lt v0, v3, :cond_1

    new-instance v3, Lru/fokus/tetrad/AiClient$AiException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u041d\u0435 \u0443\u0434\u0430\u043b\u043e\u0441\u044c \u0437\u0430\u0433\u0440\u0443\u0437\u0438\u0442\u044c \u0444\u043e\u0442\u043e \u0432 GigaChat. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0, v2}, Lru/fokus/tetrad/AiClient;->gigaError(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2, v0}, Lru/fokus/tetrad/AiClient$AiException;-><init>(Ljava/lang/String;I)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 231
    :cond_0
    throw v0

    .line 226
    :cond_1
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "id"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 227
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v0, Lru/fokus/tetrad/AiClient$AiException;

    const-string v2, "GigaChat \u043d\u0435 \u0432\u0435\u0440\u043d\u0443\u043b \u043d\u043e\u043c\u0435\u0440 \u0437\u0430\u0433\u0440\u0443\u0436\u0435\u043d\u043d\u043e\u0433\u043e \u0444\u043e\u0442\u043e."

    invoke-direct {v0, v2}, Lru/fokus/tetrad/AiClient$AiException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 230
    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 228
    :cond_3
    return-object v0
.end method

.method private static netError(Ljava/lang/Exception;)Lru/fokus/tetrad/AiClient$AiException;
    .locals 3

    .prologue
    .line 370
    instance-of v0, p0, Ljava/net/UnknownHostException;

    if-eqz v0, :cond_0

    new-instance v0, Lru/fokus/tetrad/AiClient$AiException;

    const-string v1, "\u041d\u0435\u0442 \u043f\u043e\u0434\u043a\u043b\u044e\u0447\u0435\u043d\u0438\u044f \u043a \u0438\u043d\u0442\u0435\u0440\u043d\u0435\u0442\u0443."

    invoke-direct {v0, v1}, Lru/fokus/tetrad/AiClient$AiException;-><init>(Ljava/lang/String;)V

    .line 373
    :goto_0
    return-object v0

    .line 371
    :cond_0
    instance-of v0, p0, Ljava/net/SocketTimeoutException;

    if-eqz v0, :cond_1

    new-instance v0, Lru/fokus/tetrad/AiClient$AiException;

    const-string v1, "\u0421\u0435\u0440\u0432\u0435\u0440 \u0434\u043e\u043b\u0433\u043e \u043d\u0435 \u043e\u0442\u0432\u0435\u0447\u0430\u0435\u0442. \u041f\u043e\u043f\u0440\u043e\u0431\u0443\u0439 \u0435\u0449\u0451 \u0440\u0430\u0437."

    invoke-direct {v0, v1}, Lru/fokus/tetrad/AiClient$AiException;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 372
    :cond_1
    instance-of v0, p0, Ljavax/net/ssl/SSLException;

    if-eqz v0, :cond_2

    new-instance v0, Lru/fokus/tetrad/AiClient$AiException;

    const-string v1, "\u041d\u0435 \u0443\u0434\u0430\u043b\u043e\u0441\u044c \u0443\u0441\u0442\u0430\u043d\u043e\u0432\u0438\u0442\u044c \u0437\u0430\u0449\u0438\u0449\u0451\u043d\u043d\u043e\u0435 \u0441\u043e\u0435\u0434\u0438\u043d\u0435\u043d\u0438\u0435 \u0441 \u0441\u0435\u0440\u0432\u0435\u0440\u043e\u043c \u0418\u0418. \u041f\u0440\u043e\u0432\u0435\u0440\u044c \u0434\u0430\u0442\u0443 \u0438 \u0432\u0440\u0435\u043c\u044f \u043d\u0430 \u0442\u0435\u043b\u0435\u0444\u043e\u043d\u0435."

    invoke-direct {v0, v1}, Lru/fokus/tetrad/AiClient$AiException;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 373
    :cond_2
    new-instance v0, Lru/fokus/tetrad/AiClient$AiException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u041d\u0435 \u0443\u0434\u0430\u043b\u043e\u0441\u044c \u0441\u0432\u044f\u0437\u0430\u0442\u044c\u0441\u044f \u0441 \u0441\u0435\u0440\u0432\u0435\u0440\u043e\u043c: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lru/fokus/tetrad/AiClient$AiException;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static one(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 84
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "user"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p0, v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    return-object v0
.end method

.method private static open(Ljava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 320
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 321
    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 322
    const/16 v1, 0x7530

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 323
    const v1, 0x3a980

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 324
    const-string v1, "POST"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 325
    return-object v0
.end method

.method private static openAi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;IZ)Ljava/lang/String;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;IZ)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lru/fokus/tetrad/AiClient$AiException;
        }
    .end annotation

    .prologue
    .line 267
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lru/fokus/tetrad/AiClient$AiException;

    const-string v3, "\u0414\u043e\u0431\u0430\u0432\u044c API-\u043a\u043b\u044e\u0447 \u0441\u0435\u0440\u0432\u0438\u0441\u0430 \u0432\u043e \u0432\u043a\u043b\u0430\u0434\u043a\u0435 \u00ab\u041d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0438\u00bb."

    invoke-direct {v2, v3}, Lru/fokus/tetrad/AiClient$AiException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 268
    :cond_0
    const/4 v4, 0x0

    .line 270
    :try_start_0
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    .line 271
    if-eqz p3, :cond_1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "role"

    const-string v5, "system"

    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "content"

    move-object/from16 v0, p3

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v7, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 272
    :cond_1
    const/4 v2, 0x0

    move v6, v2

    :goto_0
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v2

    if-ge v6, v2, :cond_7

    .line 273
    move-object/from16 v0, p4

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 274
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v6, v3, :cond_3

    const/4 v3, 0x1

    .line 275
    :goto_1
    if-eqz v3, :cond_6

    if-eqz p5, :cond_6

    invoke-interface/range {p5 .. p5}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    .line 276
    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8}, Lorg/json/JSONArray;-><init>()V

    .line 277
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    .line 278
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v10, "type"

    const-string v11, "image_url"

    invoke-virtual {v5, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "image_url"

    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    const-string v13, "url"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 279
    if-eqz p7, :cond_4

    const-string v5, "data:image/jpeg;base64,"

    :goto_3
    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Lru/fokus/tetrad/AiClient;->readFile(Ljava/io/File;)[B

    move-result-object v3

    const/4 v14, 0x2

    invoke-static {v3, v14}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v13, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    .line 278
    invoke-virtual {v10, v11, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v8, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lru/fokus/tetrad/AiClient$AiException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_2

    .line 308
    :catch_0
    move-exception v2

    move-object v3, v4

    .line 309
    :goto_4
    :try_start_1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 313
    :catchall_0
    move-exception v2

    move-object v4, v3

    :goto_5
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 314
    :cond_2
    throw v2

    .line 274
    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    .line 279
    :cond_4
    :try_start_2
    const-string v5, ""

    goto :goto_3

    .line 281
    :cond_5
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "type"

    const-string v9, "text"

    invoke-virtual {v3, v5, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v5, "text"

    const/4 v9, 0x1

    aget-object v9, v2, v9

    invoke-virtual {v3, v5, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v8, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 282
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "role"

    const/4 v9, 0x0

    aget-object v2, v2, v9

    invoke-virtual {v3, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "content"

    invoke-virtual {v2, v3, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v7, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 272
    :goto_6
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    goto/16 :goto_0

    .line 283
    :cond_6
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "role"

    const/4 v8, 0x0

    aget-object v8, v2, v8

    invoke-virtual {v3, v5, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v5, "content"

    const/4 v8, 0x1

    aget-object v2, v2, v8

    invoke-virtual {v3, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v7, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_2
    .catch Lru/fokus/tetrad/AiClient$AiException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_6

    .line 310
    :catch_1
    move-exception v2

    .line 311
    :goto_7
    :try_start_3
    invoke-static {v2}, Lru/fokus/tetrad/AiClient;->netError(Ljava/lang/Exception;)Lru/fokus/tetrad/AiClient$AiException;

    move-result-object v2

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 313
    :catchall_1
    move-exception v2

    goto :goto_5

    .line 285
    :cond_7
    :try_start_4
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "model"

    move-object/from16 v0, p2

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "messages"

    invoke-virtual {v2, v3, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "max_tokens"

    move/from16 v0, p6

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "temperature"

    const-wide v6, 0x3fc999999999999aL    # 0.2

    invoke-virtual {v2, v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    move-result-object v5

    .line 286
    const-string v2, "z.ai"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "bigmodel.cn"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_8
    const-string v2, "thinking"

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v6, "type"

    const-string v7, "disabled"

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 287
    :cond_9
    const-string v2, "/+$"

    const-string v3, ""

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 288
    const-string v3, "/chat/completions"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    :goto_8
    const-string v3, "POST"

    invoke-static {v2, v3}, Lru/fokus/tetrad/AiClient;->open(Ljava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;
    :try_end_4
    .catch Lru/fokus/tetrad/AiClient$AiException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v3

    .line 289
    :try_start_5
    const-string v2, "Content-Type"

    const-string v4, "application/json"

    invoke-virtual {v3, v2, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    const-string v2, "Authorization"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bearer "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    const-string v2, "HTTP-Referer"

    const-string v4, "https://fokus-tetrad.app"

    invoke-virtual {v3, v2, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    const-string v2, "X-Title"

    const-string v4, "Fokus Tetrad"

    invoke-virtual {v3, v2, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "UTF-8"

    invoke-virtual {v2, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v3, v2}, Lru/fokus/tetrad/AiClient;->writeBody(Ljava/net/HttpURLConnection;[B)V

    .line 294
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    .line 295
    invoke-static {v3, v4}, Lru/fokus/tetrad/AiClient;->readBody(Ljava/net/HttpURLConnection;I)Ljava/lang/String;

    move-result-object v2

    .line 296
    const/16 v5, 0x190

    if-lt v4, v5, :cond_c

    .line 297
    invoke-static {v2}, Lru/fokus/tetrad/AiClient;->errorMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 298
    sparse-switch v4, :sswitch_data_0

    .line 304
    new-instance v5, Lru/fokus/tetrad/AiClient$AiException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u041e\u0448\u0438\u0431\u043a\u0430 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_b

    const-string v2, ""

    :goto_9
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2, v4}, Lru/fokus/tetrad/AiClient$AiException;-><init>(Ljava/lang/String;I)V

    throw v5
    :try_end_5
    .catch Lru/fokus/tetrad/AiClient$AiException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 308
    :catch_2
    move-exception v2

    goto/16 :goto_4

    .line 288
    :cond_a
    :try_start_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/chat/completions"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_6
    .catch Lru/fokus/tetrad/AiClient$AiException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result-object v2

    goto/16 :goto_8

    .line 299
    :sswitch_0
    :try_start_7
    new-instance v2, Lru/fokus/tetrad/AiClient$AiException;

    const-string v5, "\u0421\u0435\u0440\u0432\u0438\u0441 \u043d\u0435 \u043f\u0440\u0438\u043d\u044f\u043b API-\u043a\u043b\u044e\u0447. \u041f\u0440\u043e\u0432\u0435\u0440\u044c \u0435\u0433\u043e \u0432 \u00ab\u041d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0430\u0445\u00bb."

    invoke-direct {v2, v5, v4}, Lru/fokus/tetrad/AiClient$AiException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 310
    :catch_3
    move-exception v2

    move-object v4, v3

    goto/16 :goto_7

    .line 300
    :sswitch_1
    new-instance v2, Lru/fokus/tetrad/AiClient$AiException;

    const-string v5, "\u041d\u0430 \u0430\u043a\u043a\u0430\u0443\u043d\u0442\u0435 \u0441\u0435\u0440\u0432\u0438\u0441\u0430 \u0437\u0430\u043a\u043e\u043d\u0447\u0438\u043b\u0438\u0441\u044c \u0441\u0440\u0435\u0434\u0441\u0442\u0432\u0430 \u0438\u043b\u0438 \u043b\u0438\u043c\u0438\u0442 \u0431\u0435\u0441\u043f\u043b\u0430\u0442\u043d\u044b\u0445 \u0437\u0430\u043f\u0440\u043e\u0441\u043e\u0432."

    invoke-direct {v2, v5, v4}, Lru/fokus/tetrad/AiClient$AiException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 301
    :sswitch_2
    new-instance v5, Lru/fokus/tetrad/AiClient$AiException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u0414\u043e\u0441\u0442\u0443\u043f \u0437\u0430\u043f\u0440\u0435\u0449\u0451\u043d (403): \u0441\u0435\u0440\u0432\u0438\u0441 \u043c\u043e\u0436\u0435\u0442 \u0431\u044b\u0442\u044c \u043d\u0435\u0434\u043e\u0441\u0442\u0443\u043f\u0435\u043d \u0432 \u0442\u0432\u043e\u0451\u043c \u0440\u0435\u0433\u0438\u043e\u043d\u0435. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2, v4}, Lru/fokus/tetrad/AiClient$AiException;-><init>(Ljava/lang/String;I)V

    throw v5

    .line 302
    :sswitch_3
    new-instance v5, Lru/fokus/tetrad/AiClient$AiException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u041c\u043e\u0434\u0435\u043b\u044c \u0438\u043b\u0438 \u0430\u0434\u0440\u0435\u0441 \u043d\u0435 \u043d\u0430\u0439\u0434\u0435\u043d\u044b (404). \u041f\u0440\u043e\u0432\u0435\u0440\u044c \u00ab\u041d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0438\u00bb. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2, v4}, Lru/fokus/tetrad/AiClient$AiException;-><init>(Ljava/lang/String;I)V

    throw v5

    .line 303
    :sswitch_4
    new-instance v2, Lru/fokus/tetrad/AiClient$AiException;

    const-string v5, "\u0421\u0435\u0440\u0432\u0438\u0441 \u0437\u0430\u043d\u044f\u0442 \u0438\u043b\u0438 \u0438\u0441\u0447\u0435\u0440\u043f\u0430\u043d \u043b\u0438\u043c\u0438\u0442 \u0437\u0430\u043f\u0440\u043e\u0441\u043e\u0432 (\u0431\u0435\u0441\u043f\u043b\u0430\u0442\u043d\u043e \u2014 \u043e\u0434\u0438\u043d \u0437\u0430\u043f\u0440\u043e\u0441 \u0437\u0430 \u0440\u0430\u0437). \u041f\u043e\u0434\u043e\u0436\u0434\u0438 \u043c\u0438\u043d\u0443\u0442\u0443 \u0438 \u043f\u043e\u043f\u0440\u043e\u0431\u0443\u0439 \u0441\u043d\u043e\u0432\u0430."

    invoke-direct {v2, v5, v4}, Lru/fokus/tetrad/AiClient$AiException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 304
    :cond_b
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_9

    .line 307
    :cond_c
    invoke-static {v2}, Lru/fokus/tetrad/AiClient;->choiceText(Ljava/lang/String;)Ljava/lang/String;
    :try_end_7
    .catch Lru/fokus/tetrad/AiClient$AiException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v2

    .line 313
    if-eqz v3, :cond_d

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 307
    :cond_d
    return-object v2

    .line 298
    nop

    :sswitch_data_0
    .sparse-switch
        0x191 -> :sswitch_0
        0x192 -> :sswitch_1
        0x193 -> :sswitch_2
        0x194 -> :sswitch_3
        0x1ad -> :sswitch_4
    .end sparse-switch
.end method

.method public static parseJson(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lru/fokus/tetrad/AiClient$AiException;
        }
    .end annotation

    .prologue
    .line 389
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 390
    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/16 v2, 0x7d

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 391
    if-ltz v1, :cond_0

    if-gt v2, v1, :cond_1

    :cond_0
    new-instance v0, Lru/fokus/tetrad/AiClient$AiException;

    const-string v1, "\u041e\u0442\u0432\u0435\u0442 \u043f\u0440\u0438\u0448\u0451\u043b \u0432 \u043d\u0435\u043e\u0436\u0438\u0434\u0430\u043d\u043d\u043e\u043c \u0432\u0438\u0434\u0435. \u041d\u0430\u0436\u043c\u0438 \u00ab\u041f\u0440\u043e\u0432\u0435\u0440\u0438\u0442\u044c\u00bb \u0435\u0449\u0451 \u0440\u0430\u0437."

    invoke-direct {v0, v1}, Lru/fokus/tetrad/AiClient$AiException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 392
    :cond_1
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 393
    :catch_0
    move-exception v0

    new-instance v0, Lru/fokus/tetrad/AiClient$AiException;

    const-string v1, "\u041e\u0442\u0432\u0435\u0442 \u043f\u0440\u0438\u0448\u0451\u043b \u0432 \u043d\u0435\u043e\u0436\u0438\u0434\u0430\u043d\u043d\u043e\u043c \u0432\u0438\u0434\u0435. \u041d\u0430\u0436\u043c\u0438 \u00ab\u041f\u0440\u043e\u0432\u0435\u0440\u0438\u0442\u044c\u00bb \u0435\u0449\u0451 \u0440\u0430\u0437."

    invoke-direct {v0, v1}, Lru/fokus/tetrad/AiClient$AiException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static preparePhoto(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const/4 v6, 0x1

    .line 432
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 433
    iput-boolean v6, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 434
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 435
    invoke-static {v2, v5, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 436
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 437
    :cond_0
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-lez v2, :cond_1

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-gtz v2, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "not an image"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 438
    :cond_2
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    move v0, v6

    .line 439
    :goto_0
    mul-int/lit8 v3, v0, 0x2

    div-int v3, v2, v3

    const/16 v4, 0x640

    if-lt v3, v4, :cond_3

    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 440
    :cond_3
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 441
    iput v0, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 442
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    .line 443
    invoke-static {v3, v5, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 444
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 445
    :cond_4
    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "decode failed"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 449
    :cond_5
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    .line 450
    new-instance v2, Landroid/media/ExifInterface;

    invoke-direct {v2, v3}, Landroid/media/ExifInterface;-><init>(Ljava/io/InputStream;)V

    .line 451
    const-string v4, "Orientation"

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 452
    const/4 v4, 0x6

    if-ne v2, v4, :cond_a

    const/16 v2, 0x5a

    .line 455
    :goto_1
    if-eqz v3, :cond_6

    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 458
    :cond_6
    :goto_2
    const/high16 v3, 0x44c80000    # 1600.0f

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v7, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 459
    if-nez v2, :cond_7

    cmpg-float v4, v3, v7

    if-gez v4, :cond_9

    .line 460
    :cond_7
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 461
    invoke-virtual {v5, v3, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 462
    int-to-float v2, v2

    invoke-virtual {v5, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 463
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 464
    if-eq v1, v0, :cond_8

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_8
    move-object v0, v1

    .line 467
    :cond_9
    const-string v1, "p_"

    invoke-static {p0, v0, v1}, Lru/fokus/tetrad/AiClient;->saveJpeg(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0

    .line 453
    :cond_a
    const/4 v4, 0x3

    if-ne v2, v4, :cond_b

    const/16 v2, 0xb4

    goto :goto_1

    .line 454
    :cond_b
    const/16 v4, 0x8

    if-ne v2, v4, :cond_c

    const/16 v2, 0x10e

    goto :goto_1

    .line 456
    :catch_0
    move-exception v2

    move v2, v1

    goto :goto_2

    :catch_1
    move-exception v3

    goto :goto_2

    :cond_c
    move v2, v1

    goto :goto_1
.end method

.method private static readBody(Ljava/net/HttpURLConnection;I)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 336
    const/16 v0, 0x190

    if-lt p1, v0, :cond_0

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    .line 337
    :goto_0
    if-nez v0, :cond_1

    const-string v0, ""

    .line 343
    :goto_1
    return-object v0

    .line 336
    :cond_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0

    .line 338
    :cond_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 339
    const/16 v2, 0x2000

    new-array v2, v2, [B

    .line 341
    :goto_2
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_2

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_2

    .line 342
    :cond_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 343
    const-string v0, "UTF-8"

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private static readFile(Ljava/io/File;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 377
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    long-to-int v0, v0

    new-array v1, v0, [B

    .line 378
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 379
    const/4 v0, 0x0

    .line 380
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    array-length v3, v1

    sub-int/2addr v3, v0

    invoke-virtual {v2, v1, v0, v3}, Ljava/io/FileInputStream;->read([BII)I

    move-result v3

    if-lez v3, :cond_0

    add-int/2addr v0, v3

    goto :goto_0

    .line 381
    :cond_0
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 382
    return-object v1
.end method

.method private static saveJpeg(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/io/File;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 471
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lru/fokus/tetrad/PhotoProvider;->dir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide v6, 0x40c3880000000000L    # 10000.0

    mul-double/2addr v4, v6

    double-to-int v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 472
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 473
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x55

    invoke-virtual {p1, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 474
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 475
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 476
    return-object v0
.end method

.method public static thumb(Ljava/io/File;I)Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 507
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 508
    iput-boolean v0, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 509
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 511
    :goto_0
    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    mul-int/lit8 v3, v0, 0x2

    div-int/2addr v2, v3

    if-lt v2, p1, :cond_0

    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 512
    :cond_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 513
    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 514
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static writeBody(Ljava/net/HttpURLConnection;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 329
    array-length v0, p1

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 330
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 331
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 332
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 333
    return-void
.end method
