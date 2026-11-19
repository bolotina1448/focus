.class public final Lru/fokus/tetrad/Homework;
.super Ljava/lang/Object;
.source "Homework.java"


# static fields
.field public static final EXTERNAL:Ljava/lang/String; = "external"

.field private static final EXTERNAL_P:Ljava/util/regex/Pattern;

.field public static final ORAL:Ljava/lang/String; = "oral"

.field private static final ORAL_P:Ljava/util/regex/Pattern;

.field public static final WRITTEN:Ljava/lang/String; = "written"

.field private static final WRITTEN_P:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x42

    .line 23
    const-string v0, "(\u0432|\u0432\u043e)\\s+(\u0433\u0440\u0443\u043f\u043f\u0435|\u0447\u0430\u0442\u0435|\u0431\u0435\u0441\u0435\u0434\u0435|\u0441\u0444\u0435\u0440\u0443\u043c\u0435|\u0442\u0435\u043b\u0435\u0433\u0440\u0430\u043c\\S*|\u0432\u043a|\u0432\u043a\u043e\u043d\u0442\u0430\u043a\u0442\u0435|whats\\s?app|\u0432\u0430\u0442\u0441\u0430\u043f\\S*|\u0432\u0430\u0439\u0431\u0435\u0440\\S*|\u043c\u0435\u0441\u0441\u0435\u043d\u0434\u0436\u0435\u0440\\S*|\u044d\u043b\u0435\u043a\u0442\u0440\u043e\u043d\u043d\u043e\u0439 \u043f\u043e\u0447\u0442\u0435|\u043f\u043e\u0447\u0442\u0435)|\u0440\u0430\u0437\u043c\u0435\u0449\\S*\\s+(\u0432|\u0432\u043e)|\u0441\u043c\\.?\\s*(\u0432\u043b\u043e\u0436\u0435\u043d\u0438\\S*|\u0444\u0430\u0439\u043b\\S*|\u043f\u0440\u0438\u043a\u0440\u0435\u043f\\S*)|\u0432\u043e \u0432\u043b\u043e\u0436\u0435\u043d\u0438\u0438|\u043f\u0440\u0438\u043a\u0440\u0435\u043f\u043b\\S*\\s+(\u0444\u0430\u0439\u043b|\u0437\u0430\u0434\u0430\u043d\u0438)|\u0443 \u0443\u0447\u0438\u0442\u0435\u043b\u044f|\u0437\u0430\u0434\u0430\u043d\u0438\u0435 (\u0431\u0443\u0434\u0435\u0442|\u043e\u0442\u043f\u0440\u0430\u0432\u043b\u0435\u043d\u043e|\u0432\u044b\u0441\u043b\u0430\u043d\u043e|\u0441\u043a\u0438\u043d\u0443\u0442\u043e)|\u0441\u043a\u0438\u043d\u0443\\S*|\u043f\u043e \u0441\u0441\u044b\u043b\u043a\u0435|\u0440\u0430\u0437\u0434\u0430\u0442\u043e\u0447\u043d\\S*|\u043d\u0430 \u043b\u0438\u0441\u0442\u043e\u0447\u043a\u0435|\u043d\u0430 \u043b\u0438\u0441\u0442\u043a\u0435|\u043a\u0430\u0440\u0442\u043e\u0447\u043a\\S*"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lru/fokus/tetrad/Homework;->EXTERNAL_P:Ljava/util/regex/Pattern;

    .line 28
    const-string v0, "\u0432\u044b\u0443\u0447\u0438\u0442\u044c|\u0443\u0447\u0438\u0442\u044c|\u043d\u0430\u0438\u0437\u0443\u0441\u0442\u044c|\u043f\u0440\u043e\u0447\u0438\u0442\u0430\u0442\u044c|\u043f\u0440\u043e\u0447\u0435\u0441\u0442\u044c|\u0447\u0438\u0442\u0430\u0442\u044c|\u043f\u0435\u0440\u0435\u0441\u043a\u0430\u0437\\S*|\u043f\u0435\u0440\u0435\u0441\u043a\u0430\u0436\u0438|\u043f\u043e\u0432\u0442\u043e\u0440\u0438\u0442\u044c|\u043f\u043e\u0432\u0442\u043e\u0440\u0438|\u0443\u0441\u0442\u043d\u043e|\u043e\u0442\u0432\u0435\u0442\u0438\u0442\u044c \u043d\u0430 \u0432\u043e\u043f\u0440\u043e\u0441\u044b(?!.*\u043f\u0438\u0441\u044c\u043c\u0435\u043d\u043d\u043e)|\u043f\u043e\u0434\u0433\u043e\u0442\u043e\u0432\u0438\u0442\u044c\\S* (\u0441\u043e\u043e\u0431\u0449\u0435\u043d\u0438\u0435|\u0434\u043e\u043a\u043b\u0430\u0434|\u0440\u0430\u0441\u0441\u043a\u0430\u0437)|\u0440\u0430\u0441\u0441\u043a\u0430\u0437\\S* \u043e|\u0437\u043d\u0430\u0442\u044c|\u0438\u0437\u0443\u0447\u0438\u0442\u044c|\u043e\u0437\u043d\u0430\u043a\u043e\u043c\u0438\u0442\u044c\u0441\u044f"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lru/fokus/tetrad/Homework;->ORAL_P:Ljava/util/regex/Pattern;

    .line 32
    const-string v0, "\u0443\u043f\u0440\\.?|\u0443\u043f\u0440\u0430\u0436\u043d\u0435\u043d\u0438\\S*|\u2116|\u043d\u043e\u043c\u0435\u0440\\S*|\u0437\u0430\u0434\u0430\u0447\\S*|\u0440\u0435\u0448\u0438\u0442\u044c|\u0440\u0435\u0448\u0438|\u043d\u0430\u043f\u0438\u0441\u0430\u0442\u044c|\u043d\u0430\u043f\u0438\u0448\u0438|\u0432\u044b\u043f\u043e\u043b\u043d\u0438\u0442\u044c|\u0432 \u0442\u0435\u0442\u0440\u0430\u0434\\S*|\u043f\u0438\u0441\u044c\u043c\u0435\u043d\u043d\u043e|\u0441\u043e\u0447\u0438\u043d\u0435\u043d\u0438\\S*|\u0438\u0437\u043b\u043e\u0436\u0435\u043d\u0438\\S*|\u0434\u0438\u043a\u0442\u0430\u043d\u0442\\S*|\u0441\u043f\u0438\u0441\u0430\u0442\u044c|\u0441\u043e\u0441\u0442\u0430\u0432\u0438\u0442\u044c|\u0437\u0430\u043f\u043e\u043b\u043d\u0438\u0442\u044c|\u0432\u044b\u0447\u0438\u0441\u043b\\S*|\u043f\u043e\u0441\u0442\u0440\u043e\u0438\u0442\u044c|\u043d\u0430\u0447\u0435\u0440\u0442\u0438\u0442\u044c|\u0442\u0435\u0441\u0442\\S*"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lru/fokus/tetrad/Homework;->WRITTEN_P:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static classifyWithAi(Landroid/content/Context;Lorg/json/JSONArray;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 70
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 99
    :cond_0
    return-void

    .line 71
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v6

    .line 72
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 73
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 74
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "subject"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "text"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 76
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u041d\u0438\u0436\u0435 \u0434\u043e\u043c\u0430\u0448\u043d\u0438\u0435 \u0437\u0430\u0434\u0430\u043d\u0438\u044f \u0448\u043a\u043e\u043b\u044c\u043d\u0438\u043a\u0430 \u0438\u0437 \u044d\u043b\u0435\u043a\u0442\u0440\u043e\u043d\u043d\u043e\u0433\u043e \u0434\u043d\u0435\u0432\u043d\u0438\u043a\u0430. \u0414\u043b\u044f \u043a\u0430\u0436\u0434\u043e\u0433\u043e \u043e\u043f\u0440\u0435\u0434\u0435\u043b\u0438 \u0432\u0438\u0434:\n\"written\" \u2014 \u043d\u0443\u0436\u043d\u043e \u0447\u0442\u043e-\u0442\u043e \u0441\u0434\u0435\u043b\u0430\u0442\u044c \u043f\u0438\u0441\u044c\u043c\u0435\u043d\u043d\u043e (\u0440\u0435\u0448\u0438\u0442\u044c, \u043d\u0430\u043f\u0438\u0441\u0430\u0442\u044c, \u0432\u044b\u043f\u043e\u043b\u043d\u0438\u0442\u044c \u0443\u043f\u0440\u0430\u0436\u043d\u0435\u043d\u0438\u0435, \u043d\u043e\u043c\u0435\u0440\u0430 \u0437\u0430\u0434\u0430\u0447, \u0441\u043e\u0447\u0438\u043d\u0435\u043d\u0438\u0435, \u043f\u0440\u043e\u0435\u043a\u0442);\n\"oral\" \u2014 \u0442\u043e\u043b\u044c\u043a\u043e \u0443\u0441\u0442\u043d\u043e (\u0432\u044b\u0443\u0447\u0438\u0442\u044c, \u043f\u0440\u043e\u0447\u0438\u0442\u0430\u0442\u044c, \u043f\u0435\u0440\u0435\u0441\u043a\u0430\u0437\u0430\u0442\u044c, \u043f\u043e\u0432\u0442\u043e\u0440\u0438\u0442\u044c \u043f\u0430\u0440\u0430\u0433\u0440\u0430\u0444 \u0438\u043b\u0438 \u043f\u0440\u0430\u0432\u0438\u043b\u043e, \u043f\u043e\u0434\u0433\u043e\u0442\u043e\u0432\u0438\u0442\u044c \u0443\u0441\u0442\u043d\u044b\u0439 \u043e\u0442\u0432\u0435\u0442);\n\"external\" \u2014 \u0441\u0430\u043c\u043e\u0433\u043e \u0437\u0430\u0434\u0430\u043d\u0438\u044f \u0432 \u0442\u0435\u043a\u0441\u0442\u0435 \u043d\u0435\u0442, \u043e\u043d\u043e \u043b\u0435\u0436\u0438\u0442 \u0432 \u0434\u0440\u0443\u0433\u043e\u043c \u043c\u0435\u0441\u0442\u0435 (\u0433\u0440\u0443\u043f\u043f\u0430 \u0438\u043b\u0438 \u0447\u0430\u0442 \u043a\u043b\u0430\u0441\u0441\u0430, \u0432\u043b\u043e\u0436\u0435\u043d\u0438\u0435, \u0443 \u0443\u0447\u0438\u0442\u0435\u043b\u044f, \u043f\u043e \u0441\u0441\u044b\u043b\u043a\u0435) \u0438\u043b\u0438 \u0442\u0435\u043a\u0441\u0442 \u0441\u043b\u0438\u0448\u043a\u043e\u043c \u043e\u0431\u0449\u0438\u0439, \u0447\u0442\u043e\u0431\u044b \u043f\u043e\u043d\u044f\u0442\u044c, \u0447\u0442\u043e \u0434\u0435\u043b\u0430\u0442\u044c.\n\u0415\u0441\u043b\u0438 \u0435\u0441\u0442\u044c \u0438 \u043f\u0438\u0441\u044c\u043c\u0435\u043d\u043d\u0430\u044f, \u0438 \u0443\u0441\u0442\u043d\u0430\u044f \u0447\u0430\u0441\u0442\u044c \u2014 \"written\".\n\u0414\u043b\u044f \u0443\u0441\u0442\u043d\u044b\u0445 \u0437\u0430\u0434\u0430\u043d\u0438\u0439 \u0443\u043a\u0430\u0436\u0438 \"topic\" \u2014 \u0442\u0435\u043c\u0443, \u043f\u043e \u043a\u043e\u0442\u043e\u0440\u043e\u0439 \u043c\u043e\u0436\u043d\u043e \u0437\u0430\u0434\u0430\u0442\u044c \u0432\u043e\u043f\u0440\u043e\u0441\u044b (\u043d\u0430\u043f\u0440\u0438\u043c\u0435\u0440 \u00ab\u041f\u0430\u0440\u0430\u0433\u0440\u0430\u0444 12: \u0421\u043c\u0443\u0442\u043d\u043e\u0435 \u0432\u0440\u0435\u043c\u044f\u00bb, \u00ab\u0421\u0442\u0438\u0445\u043e\u0442\u0432\u043e\u0440\u0435\u043d\u0438\u0435 \u041b\u0435\u0440\u043c\u043e\u043d\u0442\u043e\u0432\u0430 \u201e\u041f\u0430\u0440\u0443\u0441\u201c\u00bb, \u00ab\u041f\u0440\u0430\u0432\u0438\u043b\u043e: \u043f\u0440\u0430\u0432\u043e\u043f\u0438\u0441\u0430\u043d\u0438\u0435 -\u0442\u0441\u044f \u0438 -\u0442\u044c\u0441\u044f\u00bb). \u0414\u043b\u044f \u043e\u0441\u0442\u0430\u043b\u044c\u043d\u044b\u0445 topic \u2014 \u043f\u0443\u0441\u0442\u0430\u044f \u0441\u0442\u0440\u043e\u043a\u0430.\n\u041e\u0442\u0432\u0435\u0442\u044c \u0442\u043e\u043b\u044c\u043a\u043e JSON-\u043c\u0430\u0441\u0441\u0438\u0432\u043e\u043c \u0432 \u0442\u043e\u043c \u0436\u0435 \u043f\u043e\u0440\u044f\u0434\u043a\u0435: [{\"kind\": \"oral\", \"topic\": \"...\"}]\n\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 85
    new-instance v1, Lru/fokus/tetrad/Store;

    invoke-direct {v1, p0}, Lru/fokus/tetrad/Store;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lru/fokus/tetrad/AiClient;->one(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    const/16 v5, 0x320

    move-object v0, p0

    move-object v4, v2

    invoke-static/range {v0 .. v5}, Lru/fokus/tetrad/AiClient;->complete(Landroid/content/Context;Lru/fokus/tetrad/Store;Ljava/lang/String;Ljava/util/List;Ljava/util/List;I)Ljava/lang/String;

    move-result-object v0

    .line 86
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 87
    if-ltz v1, :cond_0

    if-le v2, v1, :cond_0

    .line 88
    new-instance v3, Lorg/json/JSONArray;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 89
    :goto_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v6, v0, :cond_0

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v6, v0, :cond_0

    .line 90
    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 91
    if-nez v0, :cond_4

    .line 89
    :cond_3
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 92
    :cond_4
    const-string v1, "kind"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 93
    const-string v2, "written"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "oral"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "external"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 94
    :cond_5
    invoke-virtual {p1, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 95
    const-string v4, "kind"

    invoke-virtual {v2, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 96
    const-string v1, "topic"

    const-string v4, "topic"

    const-string v5, ""

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 97
    const-string v0, "checked"

    const/4 v1, 0x1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto :goto_2
.end method

.method public static guess(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 39
    if-nez p0, :cond_0

    const-string v0, ""

    .line 40
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    const-string v0, "external"

    .line 47
    :goto_1
    return-object v0

    .line 39
    :cond_0
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 41
    :cond_1
    sget-object v1, Lru/fokus/tetrad/Homework;->EXTERNAL_P:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    .line 42
    sget-object v2, Lru/fokus/tetrad/Homework;->WRITTEN_P:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    .line 43
    sget-object v3, Lru/fokus/tetrad/Homework;->ORAL_P:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    .line 44
    if-eqz v1, :cond_3

    if-eqz v0, :cond_2

    if-eqz v2, :cond_3

    :cond_2
    const-string v0, "external"

    goto :goto_1

    .line 45
    :cond_3
    if-eqz v2, :cond_4

    const-string v0, "written"

    goto :goto_1

    .line 46
    :cond_4
    if-eqz v0, :cond_5

    const-string v0, "oral"

    goto :goto_1

    .line 47
    :cond_5
    const-string v0, "written"

    goto :goto_1
.end method

.method public static has(Lorg/json/JSONArray;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 102
    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 103
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 104
    if-eqz v2, :cond_1

    const-string v3, "kind"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    .line 106
    :cond_0
    return v1

    .line 102
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static item(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 51
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 53
    :try_start_0
    const-string v0, "subject"

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    invoke-virtual {v1, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 54
    const-string v2, "text"

    if-nez p1, :cond_1

    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 55
    const-string v0, "kind"

    invoke-static {p1}, Lru/fokus/tetrad/Homework;->guess(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 56
    const-string v0, "source"

    invoke-virtual {v1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 57
    const-string v0, "checked"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 59
    :goto_1
    return-object v1

    .line 54
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 58
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public static label(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    const-string v0, "oral"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u0423\u0441\u0442\u043d\u043e\u0435 \u2014 \u043f\u043e\u0441\u043b\u0435 \u0437\u0430\u043d\u044f\u0442\u0438\u044f \u0431\u043b\u0438\u0446-\u043e\u043f\u0440\u043e\u0441"

    .line 65
    :goto_0
    return-object v0

    .line 64
    :cond_0
    const-string v0, "external"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u0421\u0430\u043c\u043e\u0433\u043e \u0437\u0430\u0434\u0430\u043d\u0438\u044f \u0437\u0434\u0435\u0441\u044c \u043d\u0435\u0442"

    goto :goto_0

    .line 65
    :cond_1
    const-string v0, "\u041f\u0438\u0441\u044c\u043c\u0435\u043d\u043d\u043e\u0435 \u2014 \u043f\u043e\u0441\u043b\u0435 \u0437\u0430\u043d\u044f\u0442\u0438\u044f \u043f\u0440\u043e\u0432\u0435\u0440\u043a\u0430 \u043f\u043e \u0444\u043e\u0442\u043e"

    goto :goto_0
.end method

.method public static text(Lorg/json/JSONArray;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 113
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 114
    if-eqz v2, :cond_0

    if-eqz p1, :cond_1

    const-string v3, "kind"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 112
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 115
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_2

    const-string v3, "\n\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    :cond_2
    const-string v3, "subject"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 117
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    :cond_3
    const-string v3, "text"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 120
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
