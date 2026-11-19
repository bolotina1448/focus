.class Lru/fokus/tetrad/MeshActivity$5;
.super Ljava/lang/Object;
.source "MeshActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/fokus/tetrad/MeshActivity;->checkLogin(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/fokus/tetrad/MeshActivity;


# direct methods
.method constructor <init>(Lru/fokus/tetrad/MeshActivity;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lru/fokus/tetrad/MeshActivity$5;->this$0:Lru/fokus/tetrad/MeshActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 139
    :try_start_0
    iget-object v0, p0, Lru/fokus/tetrad/MeshActivity$5;->this$0:Lru/fokus/tetrad/MeshActivity;

    invoke-virtual {v0}, Lru/fokus/tetrad/MeshActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lru/fokus/tetrad/Mesh;->initProfile(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :goto_0
    iget-object v0, p0, Lru/fokus/tetrad/MeshActivity$5;->this$0:Lru/fokus/tetrad/MeshActivity;

    new-instance v1, Lru/fokus/tetrad/MeshActivity$5$1;

    invoke-direct {v1, p0}, Lru/fokus/tetrad/MeshActivity$5$1;-><init>(Lru/fokus/tetrad/MeshActivity$5;)V

    invoke-virtual {v0, v1}, Lru/fokus/tetrad/MeshActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 145
    return-void

    .line 139
    :catch_0
    move-exception v0

    goto :goto_0
.end method
