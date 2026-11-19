.class Lru/fokus/tetrad/MainActivity$18;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/fokus/tetrad/MainActivity;->fetchMesh()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/fokus/tetrad/MainActivity;


# direct methods
.method constructor <init>(Lru/fokus/tetrad/MainActivity;)V
    .locals 0

    .prologue
    .line 318
    iput-object p1, p0, Lru/fokus/tetrad/MainActivity$18;->this$0:Lru/fokus/tetrad/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 319
    .line 321
    :try_start_0
    iget-object v0, p0, Lru/fokus/tetrad/MainActivity$18;->this$0:Lru/fokus/tetrad/MainActivity;

    invoke-virtual {v0}, Lru/fokus/tetrad/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lru/fokus/tetrad/Mesh;->homeworks(Landroid/content/Context;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object v0, v1

    .line 324
    :goto_0
    iget-object v1, p0, Lru/fokus/tetrad/MainActivity$18;->this$0:Lru/fokus/tetrad/MainActivity;

    new-instance v3, Lru/fokus/tetrad/MainActivity$18$1;

    invoke-direct {v3, p0, v0, v2}, Lru/fokus/tetrad/MainActivity$18$1;-><init>(Lru/fokus/tetrad/MainActivity$18;Ljava/lang/Exception;Ljava/util/List;)V

    invoke-virtual {v1, v3}, Lru/fokus/tetrad/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 344
    return-void

    .line 321
    :catch_0
    move-exception v0

    move-object v2, v1

    goto :goto_0
.end method
