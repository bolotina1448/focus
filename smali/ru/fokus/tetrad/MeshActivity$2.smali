.class Lru/fokus/tetrad/MeshActivity$2;
.super Landroid/webkit/WebChromeClient;
.source "MeshActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/fokus/tetrad/MeshActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 89
    iput-object p1, p0, Lru/fokus/tetrad/MeshActivity$2;->this$0:Lru/fokus/tetrad/MeshActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lru/fokus/tetrad/MeshActivity$2;->this$0:Lru/fokus/tetrad/MeshActivity;

    invoke-static {v0}, Lru/fokus/tetrad/MeshActivity;->access$000(Lru/fokus/tetrad/MeshActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 92
    iget-object v0, p0, Lru/fokus/tetrad/MeshActivity$2;->this$0:Lru/fokus/tetrad/MeshActivity;

    invoke-static {v0}, Lru/fokus/tetrad/MeshActivity;->access$000(Lru/fokus/tetrad/MeshActivity;)Landroid/widget/ProgressBar;

    move-result-object v1

    const/16 v0, 0x64

    if-lt p2, v0, :cond_0

    const/4 v0, 0x4

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 93
    return-void

    .line 92
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
