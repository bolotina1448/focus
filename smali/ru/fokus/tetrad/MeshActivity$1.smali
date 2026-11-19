.class Lru/fokus/tetrad/MeshActivity$1;
.super Ljava/lang/Object;
.source "MeshActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 61
    iput-object p1, p0, Lru/fokus/tetrad/MeshActivity$1;->this$0:Lru/fokus/tetrad/MeshActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lru/fokus/tetrad/MeshActivity$1;->this$0:Lru/fokus/tetrad/MeshActivity;

    invoke-virtual {v0}, Lru/fokus/tetrad/MeshActivity;->finish()V

    return-void
.end method
