.class Lru/fokus/tetrad/MeshActivity$6;
.super Ljava/lang/Object;
.source "MeshActivity.java"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/fokus/tetrad/MeshActivity;->takeFromPage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/fokus/tetrad/MeshActivity;


# direct methods
.method constructor <init>(Lru/fokus/tetrad/MeshActivity;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lru/fokus/tetrad/MeshActivity$6;->this$0:Lru/fokus/tetrad/MeshActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 155
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lru/fokus/tetrad/MeshActivity$6;->onReceiveValue(Ljava/lang/String;)V

    return-void
.end method

.method public onReceiveValue(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 158
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 160
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x14

    if-ge v1, v2, :cond_0

    iget-object v0, p0, Lru/fokus/tetrad/MeshActivity$6;->this$0:Lru/fokus/tetrad/MeshActivity;

    const-string v1, "\u041d\u0430 \u0441\u0442\u0440\u0430\u043d\u0438\u0446\u0435 \u043d\u0435\u0442 \u0442\u0435\u043a\u0441\u0442\u0430. \u041e\u0442\u043a\u0440\u043e\u0439 \u0441\u043f\u0438\u0441\u043e\u043a \u0434\u043e\u043c\u0430\u0448\u043d\u0438\u0445 \u0437\u0430\u0434\u0430\u043d\u0438\u0439."

    invoke-static {v0, v1}, Lru/fokus/tetrad/MeshActivity;->access$300(Lru/fokus/tetrad/MeshActivity;Ljava/lang/String;)V

    .line 174
    :goto_0
    return-void

    .line 159
    :catch_0
    move-exception v0

    iget-object v0, p0, Lru/fokus/tetrad/MeshActivity$6;->this$0:Lru/fokus/tetrad/MeshActivity;

    const-string v1, "\u041d\u0435 \u0443\u0434\u0430\u043b\u043e\u0441\u044c \u043f\u0440\u043e\u0447\u0438\u0442\u0430\u0442\u044c \u0441\u0442\u0440\u0430\u043d\u0438\u0446\u0443."

    invoke-static {v0, v1}, Lru/fokus/tetrad/MeshActivity;->access$300(Lru/fokus/tetrad/MeshActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 161
    :cond_0
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lru/fokus/tetrad/MeshActivity$6$1;

    invoke-direct {v2, p0, v0}, Lru/fokus/tetrad/MeshActivity$6$1;-><init>(Lru/fokus/tetrad/MeshActivity$6;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 173
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method
