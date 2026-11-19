.class Lru/fokus/tetrad/MarksActivity$2;
.super Ljava/lang/Object;
.source "MarksActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/fokus/tetrad/MarksActivity;->render()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/fokus/tetrad/MarksActivity;


# direct methods
.method constructor <init>(Lru/fokus/tetrad/MarksActivity;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lru/fokus/tetrad/MarksActivity$2;->this$0:Lru/fokus/tetrad/MarksActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 133
    iget-object v0, p0, Lru/fokus/tetrad/MarksActivity$2;->this$0:Lru/fokus/tetrad/MarksActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lru/fokus/tetrad/MarksActivity$2;->this$0:Lru/fokus/tetrad/MarksActivity;

    const-class v3, Lru/fokus/tetrad/MeshActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "mode"

    const-string v3, "login"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lru/fokus/tetrad/MarksActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 134
    return-void
.end method
