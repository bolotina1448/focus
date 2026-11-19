.class Lru/fokus/tetrad/SettingsActivity$6;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/fokus/tetrad/SettingsActivity;->render()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/fokus/tetrad/SettingsActivity;

.field final synthetic val$meshIn:Z


# direct methods
.method constructor <init>(Lru/fokus/tetrad/SettingsActivity;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 113
    iput-object p1, p0, Lru/fokus/tetrad/SettingsActivity$6;->this$0:Lru/fokus/tetrad/SettingsActivity;

    iput-boolean p2, p0, Lru/fokus/tetrad/SettingsActivity$6;->val$meshIn:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 114
    iget-boolean v0, p0, Lru/fokus/tetrad/SettingsActivity$6;->val$meshIn:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/fokus/tetrad/SettingsActivity$6;->this$0:Lru/fokus/tetrad/SettingsActivity;

    invoke-static {v0}, Lru/fokus/tetrad/Mesh;->logout(Landroid/content/Context;)V

    iget-object v0, p0, Lru/fokus/tetrad/SettingsActivity$6;->this$0:Lru/fokus/tetrad/SettingsActivity;

    invoke-static {v0}, Lru/fokus/tetrad/SettingsActivity;->access$000(Lru/fokus/tetrad/SettingsActivity;)V

    .line 116
    :goto_0
    return-void

    .line 115
    :cond_0
    iget-object v0, p0, Lru/fokus/tetrad/SettingsActivity$6;->this$0:Lru/fokus/tetrad/SettingsActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lru/fokus/tetrad/SettingsActivity$6;->this$0:Lru/fokus/tetrad/SettingsActivity;

    const-class v3, Lru/fokus/tetrad/MeshActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "mode"

    const-string v3, "login"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lru/fokus/tetrad/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
