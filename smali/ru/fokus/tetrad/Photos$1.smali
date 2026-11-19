.class Lru/fokus/tetrad/Photos$1;
.super Ljava/lang/Object;
.source "Photos.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/fokus/tetrad/Photos;->handle(Landroid/app/Activity;ZILandroid/content/Intent;ILru/fokus/tetrad/Photos$Done;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$a:Landroid/app/Activity;

.field final synthetic val$done:Lru/fokus/tetrad/Photos$Done;

.field final synthetic val$room:I

.field final synthetic val$toDelete:Ljava/io/File;

.field final synthetic val$uris:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;ILandroid/app/Activity;Ljava/io/File;Lru/fokus/tetrad/Photos$Done;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 78
    iput-object p1, p0, Lru/fokus/tetrad/Photos$1;->val$uris:Ljava/util/List;

    iput p2, p0, Lru/fokus/tetrad/Photos$1;->val$room:I

    iput-object p3, p0, Lru/fokus/tetrad/Photos$1;->val$a:Landroid/app/Activity;

    iput-object p4, p0, Lru/fokus/tetrad/Photos$1;->val$toDelete:Ljava/io/File;

    iput-object p5, p0, Lru/fokus/tetrad/Photos$1;->val$done:Lru/fokus/tetrad/Photos$Done;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 79
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 81
    iget-object v1, p0, Lru/fokus/tetrad/Photos$1;->val$uris:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    move v2, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 82
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    iget v6, p0, Lru/fokus/tetrad/Photos$1;->val$room:I

    if-lt v5, v6, :cond_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 83
    :cond_0
    :try_start_0
    iget-object v5, p0, Lru/fokus/tetrad/Photos$1;->val$a:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v0}, Lru/fokus/tetrad/AiClient;->preparePhoto(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    :goto_1
    move v2, v0

    .line 85
    goto :goto_0

    .line 84
    :catch_0
    move-exception v0

    add-int/lit8 v0, v2, 0x1

    goto :goto_1

    .line 86
    :cond_1
    iget-object v0, p0, Lru/fokus/tetrad/Photos$1;->val$toDelete:Ljava/io/File;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lru/fokus/tetrad/Photos$1;->val$toDelete:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 87
    :cond_2
    if-lez v2, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u041d\u0435 \u043f\u043e\u043b\u0443\u0447\u0438\u043b\u043e\u0441\u044c \u043e\u0442\u043a\u0440\u044b\u0442\u044c "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u0444\u043e\u0442\u043e. \u041f\u043e\u043f\u0440\u043e\u0431\u0443\u0439 \u0434\u0440\u0443\u0433\u043e\u0435."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 89
    :goto_2
    iget-object v1, p0, Lru/fokus/tetrad/Photos$1;->val$a:Landroid/app/Activity;

    new-instance v2, Lru/fokus/tetrad/Photos$1$1;

    invoke-direct {v2, p0, v3, v0}, Lru/fokus/tetrad/Photos$1$1;-><init>(Lru/fokus/tetrad/Photos$1;Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 90
    return-void

    .line 88
    :cond_3
    if-lez v1, :cond_4

    const-string v0, "\u041c\u043e\u0436\u043d\u043e \u043d\u0435 \u0431\u043e\u043b\u044c\u0448\u0435 5 \u0444\u043e\u0442\u043e."

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    goto :goto_2
.end method
