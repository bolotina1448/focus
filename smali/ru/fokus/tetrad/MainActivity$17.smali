.class Lru/fokus/tetrad/MainActivity$17;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/fokus/tetrad/MainActivity;->classifyAsync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/fokus/tetrad/MainActivity;

.field final synthetic val$items:Lorg/json/JSONArray;


# direct methods
.method constructor <init>(Lru/fokus/tetrad/MainActivity;Lorg/json/JSONArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 295
    iput-object p1, p0, Lru/fokus/tetrad/MainActivity$17;->this$0:Lru/fokus/tetrad/MainActivity;

    iput-object p2, p0, Lru/fokus/tetrad/MainActivity$17;->val$items:Lorg/json/JSONArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 296
    :try_start_0
    iget-object v0, p0, Lru/fokus/tetrad/MainActivity$17;->this$0:Lru/fokus/tetrad/MainActivity;

    invoke-virtual {v0}, Lru/fokus/tetrad/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lru/fokus/tetrad/MainActivity$17;->val$items:Lorg/json/JSONArray;

    invoke-static {v0, v1}, Lru/fokus/tetrad/Homework;->classifyWithAi(Landroid/content/Context;Lorg/json/JSONArray;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 297
    :goto_0
    iget-object v0, p0, Lru/fokus/tetrad/MainActivity$17;->this$0:Lru/fokus/tetrad/MainActivity;

    new-instance v1, Lru/fokus/tetrad/MainActivity$17$1;

    invoke-direct {v1, p0}, Lru/fokus/tetrad/MainActivity$17$1;-><init>(Lru/fokus/tetrad/MainActivity$17;)V

    invoke-virtual {v0, v1}, Lru/fokus/tetrad/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 303
    return-void

    .line 296
    :catch_0
    move-exception v0

    goto :goto_0
.end method
